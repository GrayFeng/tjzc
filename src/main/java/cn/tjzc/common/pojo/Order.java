package cn.tjzc.common.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Created by GrayF on 2017/8/4.
 */
public class Order {

    private String id;

    private String orderNo;

    private String type;

    private String startTime;

    private String tenancy;

    private String startAddress;

    private String endAddress;

    //接0，送1
    private String fetchSend;

    private String flightTrain;
    //单程0 往返1
    private String single;

    private Double total;

    private String status;

    private String customerId;

    private String customerType;

    private String customerName;

    private String customerMobile;

    private String customerCarType;

    private String remark;

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getTenancy() {
        return tenancy;
    }

    public void setTenancy(String tenancy) {
        this.tenancy = tenancy;
    }

    public String getStartAddress() {
        return startAddress;
    }

    public void setStartAddress(String startAddress) {
        this.startAddress = startAddress;
    }

    public String getEndAddress() {
        return endAddress;
    }

    public void setEndAddress(String endAddress) {
        this.endAddress = endAddress;
    }

    public String getFetchSend() {
        return fetchSend;
    }

    public void setFetchSend(String fetchSend) {
        this.fetchSend = fetchSend;
    }

    public String getFlightTrain() {
        return flightTrain;
    }

    public void setFlightTrain(String flightTrain) {
        this.flightTrain = flightTrain;
    }

    public String getSingle() {
        return single;
    }

    public void setSingle(String single) {
        this.single = single;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getCustomerType() {
        return customerType;
    }

    public void setCustomerType(String customerType) {
        this.customerType = customerType;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerMobile() {
        return customerMobile;
    }

    public void setCustomerMobile(String customerMobile) {
        this.customerMobile = customerMobile;
    }

    public String getCustomerCarType() {
        return customerCarType;
    }

    public void setCustomerCarType(String customerCarType) {
        this.customerCarType = customerCarType;
    }

}
