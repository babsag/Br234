.class public interface abstract Lcom/ca/mas/identity/user/ScimUser;
.super Ljava/lang/Object;
.source "ScimUser.java"

# interfaces
.implements Lcom/ca/mas/identity/ScimIdentifiable;
.implements Lcom/ca/mas/foundation/MASTransformable;


# virtual methods
.method public abstract getAddressList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASAddress;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmailList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASEmail;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getImsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASIms;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLocale()Ljava/lang/String;
.end method

.method public abstract getMeta()Lcom/ca/mas/identity/user/MASMeta;
.end method

.method public abstract getName()Lcom/ca/mas/identity/user/MASName;
.end method

.method public abstract getNickName()Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getPhoneList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASPhone;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhotoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/user/MASPhoto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreferredLanguage()Ljava/lang/String;
.end method

.method public abstract getProfileUrl()Ljava/lang/String;
.end method

.method public abstract getSource()Lorg/json/JSONObject;
.end method

.method public abstract getTimeZone()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract getUserType()Ljava/lang/String;
.end method

.method public abstract isActive()Z
.end method
