.class public interface abstract Lcom/ca/mas/identity/group/MASGroupIdentity;
.super Ljava/lang/Object;
.source "MASGroupIdentity.java"


# virtual methods
.method public abstract getGroupById(Ljava/lang/String;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGroupMetaData(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/identity/group/GroupAttributes;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getGroupsByFilter(Lcom/ca/mas/identity/common/MASFilteredRequest;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/identity/common/MASFilteredRequest;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/util/List<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;>;)V"
        }
    .end annotation
.end method
