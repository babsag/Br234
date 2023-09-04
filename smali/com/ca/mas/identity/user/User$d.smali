.class Lcom/ca/mas/identity/user/User$d;
.super Lcom/ca/mas/identity/user/MASName;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/identity/user/User;->populate(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/ca/mas/identity/user/User;


# direct methods
.method constructor <init>(Lcom/ca/mas/identity/user/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/user/User$d;->j:Lcom/ca/mas/identity/user/User;

    iput-object p2, p0, Lcom/ca/mas/identity/user/User$d;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/ca/mas/identity/user/User$d;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/ca/mas/identity/user/User$d;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ca/mas/identity/user/MASName;-><init>()V

    return-void
.end method


# virtual methods
.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User$d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User$d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User$d;->i:Ljava/lang/String;

    return-object v0
.end method
