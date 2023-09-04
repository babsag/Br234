.class public Lcom/ca/mas/core/token/ClientCredentials;
.super Ljava/lang/Object;
.source "ClientCredentials.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ca/mas/core/token/ClientCredentials;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ca/mas/core/token/ClientCredentials;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ca/mas/core/token/ClientCredentials;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/ca/mas/core/token/ClientCredentials;->d:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getClientExpiration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/token/ClientCredentials;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/token/ClientCredentials;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/token/ClientCredentials;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMasterClientId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/token/ClientCredentials;->a:Ljava/lang/String;

    return-object v0
.end method
