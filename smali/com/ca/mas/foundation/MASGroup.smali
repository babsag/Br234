.class public abstract Lcom/ca/mas/foundation/MASGroup;
.super Ljava/lang/Object;
.source "MASGroup.java"

# interfaces
.implements Lcom/ca/mas/foundation/MASTransformable;
.implements Lcom/ca/mas/identity/group/MASGroupIdentity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/ca/mas/foundation/MASGroup;
    .locals 1

    .line 1
    new-instance v0, Lcom/ca/mas/foundation/MASGroup$a;

    invoke-direct {v0}, Lcom/ca/mas/foundation/MASGroup$a;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/ca/mas/foundation/Extension;->b(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract addMember(Lcom/ca/mas/identity/group/MASMember;)V
.end method

.method public abstract delete(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

.method public abstract getGroupName()Ljava/lang/String;
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

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMembers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ca/mas/identity/group/MASMember;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMeta()Lcom/ca/mas/identity/user/MASMeta;
.end method

.method public abstract getOwner()Lcom/ca/mas/identity/group/MASOwner;
.end method

.method public abstract getReference()Ljava/lang/String;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract removeMember(Lcom/ca/mas/identity/group/MASMember;)V
.end method

.method public abstract save(Lcom/ca/mas/foundation/MASCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ca/mas/foundation/MASCallback<",
            "Lcom/ca/mas/foundation/MASGroup;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setGroupName(Ljava/lang/String;)V
.end method
