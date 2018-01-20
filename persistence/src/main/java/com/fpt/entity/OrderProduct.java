package com.fpt.entity;/*
  By Chi Can Em  20-01-2018
 */

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Set;

@Entity
@Table(name = "order_product")
public class OrderProduct {
    private Integer id;
    private Timestamp date;
    private String statusPayment;
    private String statusDelivery;
    private float totalBill;
    private float totalWeight;
    private float feeDelivery;
    private String statusBill;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "_id")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Column(name = "_date")
    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    @Column(name = "_status_payment")
    public String getStatusPayment() {
        return statusPayment;
    }

    public void setStatusPayment(String statusPayment) {
        this.statusPayment = statusPayment;
    }

    @Column(name = "_status_delivery")
    public String getStatusDelivery() {
        return statusDelivery;
    }

    public void setStatusDelivery(String statusDelivery) {
        this.statusDelivery = statusDelivery;
    }

    @Column(name = "_total_bill")
    public float getTotalBill() {
        return totalBill;
    }

    public void setTotalBill(float totalBill) {
        this.totalBill = totalBill;
    }

    @Column(name = "_total_weight")
    public float getTotalWeight() {
        return totalWeight;
    }

    public void setTotalWeight(float totalWeight) {
        this.totalWeight = totalWeight;
    }

    @Column(name = "_fee_delivery")
    public float getFeeDelivery() {
        return feeDelivery;
    }

    public void setFeeDelivery(float feeDelivery) {
        this.feeDelivery = feeDelivery;
    }

    @Column(name = "_status_bill")
    public String getStatusBill() {
        return statusBill;
    }

    public void setStatusBill(String statusBill) {
        this.statusBill = statusBill;
    }

    private Payment payment;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "_payment_id")
    public Payment getPayment() {
        return payment;
    }

    public void setPayment(Payment payment) {
        this.payment = payment;
    }

    private Customer customer;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "_customerId")
    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    private CustomerAddress customerAddress;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "_id_customer_address")
    public CustomerAddress getCustomerAddress() {
        return customerAddress;
    }

    public void setCustomerAddress(CustomerAddress customerAddress) {
        this.customerAddress = customerAddress;
    }

    private Set<RefProductOrder> refProductOrder;

    @OneToMany(mappedBy = "orderProduct", cascade = CascadeType.ALL)
    public Set<RefProductOrder> getRefProductOrder() {
        return refProductOrder;
    }

    public void setRefProductOrder(Set<RefProductOrder> refProductOrder) {
        this.refProductOrder = refProductOrder;
    }
}
