package com.ascend.sbs.model;

import java.io.Serializable;

public class Permission implements Serializable {
    private Integer permissionId;
    private String permissionName;
    private String url;

    public Integer getPermissionId() {
        return permissionId;
    }

    public Permission setPermissionId(Integer permissionId) {
        this.permissionId = permissionId;
        return this;
    }

    public String getPermissionName() {
        return permissionName;
    }

    public Permission setPermissionName(String permissionName) {
        this.permissionName = permissionName;
        return this;
    }

    public String getUrl() {
        return url;
    }

    public Permission setUrl(String url) {
        this.url = url;
        return this;
    }
}
