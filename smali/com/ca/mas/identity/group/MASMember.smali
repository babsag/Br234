.class public Lcom/ca/mas/identity/group/MASMember;
.super Ljava/lang/Object;
.source "MASMember.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ca/mas/foundation/MASUser;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/ca/mas/identity/ScimIdentifiable;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/group/MASMember;->b:Ljava/lang/String;

    .line 3
    invoke-interface {p1}, Lcom/ca/mas/identity/ScimIdentifiable;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ca/mas/identity/group/MASMember;->d:Ljava/lang/String;

    .line 4
    invoke-interface {p1}, Lcom/ca/mas/identity/ScimIdentifiable;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ca/mas/identity/group/MASMember;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/ca/mas/identity/group/MASMember;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/ca/mas/identity/group/MASMember;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/ca/mas/identity/group/MASMember;->c:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/ca/mas/identity/group/MASMember;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/group/MASMember;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/group/MASMember;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/group/MASMember;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/group/MASMember;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/group/MASMember;->d:Ljava/lang/String;

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/group/MASMember;->c:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/group/MASMember;->a:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/group/MASMember;->b:Ljava/lang/String;

    return-void
.end method
