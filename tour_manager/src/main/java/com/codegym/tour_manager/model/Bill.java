package com.codegym.tour_manager.model;

public class Bill {
    private int id;
    private int idCustomer;
    private int idTour;
    private int quantity;
    private double total;
    private EStatus status;

    public Bill(int id, int idCustomer, int idTour, int quantity, double total, EStatus status) {
        this.id = id;
        this.idCustomer = idCustomer;
        this.idTour = idTour;
        this.quantity = quantity;
        this.total = total;
        this.status = status;
    }

    public Bill() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(int idCustomer) {
        this.idCustomer = idCustomer;
    }

    public int getIdTour() {
        return idTour;
    }

    public void setIdTour(int idTour) {
        this.idTour = idTour;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public EStatus getStatus() {
        return status;
    }

    public void setStatus(EStatus status) {
        this.status = status;
    }
}
