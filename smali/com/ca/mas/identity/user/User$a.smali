.class Lcom/ca/mas/identity/user/User$a;
.super Lcom/ca/mas/identity/user/MASPhoto;
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
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ca/mas/identity/user/User;


# direct methods
.method constructor <init>(Lcom/ca/mas/identity/user/User;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/identity/user/User$a;->d:Lcom/ca/mas/identity/user/User;

    iput-object p2, p0, Lcom/ca/mas/identity/user/User$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ca/mas/identity/user/MASPhoto;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/identity/user/User$a;->c:Ljava/lang/String;

    return-object v0
.end method
