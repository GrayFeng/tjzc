package cn.tjzc.common.pojo;

import java.io.Serializable;

/**
 * Created by GrayF on 2017/8/10.
 */
public class Picture implements Serializable{

    private String id;

    private String name;

    private String url;

    /**
     * 1-国内,2-境外,3-商务,4-签证,5-房车
     */
    private Integer type;

    /**
     * 0-有效,1-无效
     */
    private Integer status;

    private String remark;
    //排序序号
    private Integer seq;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }
}
