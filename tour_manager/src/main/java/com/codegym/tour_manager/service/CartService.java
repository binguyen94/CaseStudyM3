package com.codegym.tour_manager.service;

import com.codegym.tour_manager.model.Cart;
import com.codegym.tour_manager.model.CartItem;
import com.codegym.tour_manager.model.Tour;

import java.sql.*;
import java.time.LocalDate;
import java.util.List;

public class CartService extends DbContext implements ICartService{
    private  ITourService tourService;
    private  ICartItemService cartItemService;
    public  CartService(){
        tourService = new TourServiceMyspl();
        cartItemService = new CartItemService();
    }
    @Override
    public Cart getCartById(int idUser) {
        Cart cart = null;
        Connection connection = getConnection();
        try{
            PreparedStatement ps = connection.prepareStatement("SELECT * \n" +
                    "FROM cart where id_user = ?;");
            ps.setInt(1,idUser);

            System.out.println("getCartById: " + ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                LocalDate date = rs.getDate("create_at").toLocalDate();
                double total = rs.getDouble("total");
                int idUserDB = rs.getInt("id_user");

                cart = new Cart(id, date, total, idUserDB);
                List<CartItem> cartItems = cartItemService.getAllCartItems(cart.getId());
                cart.setCartItems(cartItems);
                cart.updateTotal();
            }
        }catch (SQLException sqlException){
            printSQLException(sqlException);
        }
        return cart;
    }

    @Override
    public Cart createCart(Cart cart) {
        try{
            Connection connection = getConnection();
            PreparedStatement ps = connection.prepareStatement("INSERT INTO `cart` (`id_user`, `total`, `create_at`) VALUES (?, ?, ?);");
            ps.setInt(1,cart.getIdUser());
            ps.setDouble(2, cart.getTotal());
            ps.setDate(3, Date.valueOf(cart.getCreateAt()));
            ps.executeUpdate();

            System.out.println("createCart: " + ps);
            ps = connection.prepareStatement("SELECT LAST_INSERT_ID() as last_id;");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                int maxId = rs.getInt("last_id");
                cart.setId(maxId);
            }
            connection.close();

        }catch (SQLException sqlException){
            printSQLException(sqlException);
        }
        return cart;
    }

    @Override
    public Cart updateCart(Cart cart) {
        return null;
    }

    @Override
    public void addToCart(int idTour, int quantity, int idUser) {
        Tour tour = tourService.findById(idTour);

        Cart cart = getCartById(idUser);
        if(cart == null){
            cart = new Cart(LocalDate.now(), 0 , idUser);
            cart = createCart(cart);      // cart đã có id

        }
        CartItem cartItem = cartItemService.findCartItemById(cart.getId(), idTour);
        if(cartItem != null){
            cartItem.setQuantity(quantity + cartItem.getQuantity());
            cartItemService.updateCartItem(cartItem);
        }else {
            CartItem cartItemCreate = new CartItem(idTour, tour.getPrice(), quantity);
            cartItemCreate.setIdCart(cart.getId());
            cartItemService.saveCartItem(cartItemCreate);
        }
    }

    public Cart updateCartInfo(int idUser, int idTour, int quantity) {
        Cart cart = getCartById(idUser);
        CartItem cartItem = cartItemService.findCartItemById(cart.getId(), idTour);
        if (cartItem != null) {
            cartItem.setQuantity(quantity);
            cartItemService.updateCartItem(cartItem);
        }
        cart = getCartById(idUser);
        return cart;
    }
}
