.class public interface abstract Lcom/ca/mas/identity/group/MASGroupRepository;
.super Ljava/lang/Object;
.source "MASGroupRepository.java"

# interfaces
.implements Lcom/ca/mas/identity/group/MASGroupIdentity;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract delete(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

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

.method public abstract save(Lcom/ca/mas/foundation/MASGroup;Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASGroup;",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation
.end method
