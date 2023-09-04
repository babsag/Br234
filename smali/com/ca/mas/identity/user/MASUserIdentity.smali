.class public interface abstract Lcom/ca/mas/identity/user/MASUserIdentity;
.super Ljava/lang/Object;
.source "MASUserIdentity.java"


# virtual methods
.method public abstract getUserById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUserMetaData(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/identity/user/UserAttributes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUsersByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/identity/common/MASFilteredRequest;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASUser;",
            ">;>;)V"
        }
    .end annotation
.end method
