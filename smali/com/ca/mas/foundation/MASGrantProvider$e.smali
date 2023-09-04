.class final Lcom/ca/mas/foundation/MASGrantProvider$e;
.super Ljava/lang/Object;
.source "MASGrantProvider.java"

# interfaces
.implements Lcom/ca/mas/core/util/Functions$Unary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/foundation/MASGrantProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ca/mas/core/util/Functions$Unary<",
        "Ljava/net/URI;",
        "Lcom/ca/mas/core/context/MssoContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/core/context/MssoContext;)Ljava/net/URI;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/context/MssoContext;->getConfigurationProvider()Lcom/ca/mas/core/conf/ConfigurationProvider;

    move-result-object p1

    const-string v0, "msso.url.register_device_client"

    invoke-interface {p1, v0}, Lcom/ca/mas/core/conf/ConfigurationProvider;->getTokenUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/core/context/MssoContext;

    invoke-virtual {p0, p1}, Lcom/ca/mas/foundation/MASGrantProvider$e;->a(Lcom/ca/mas/core/context/MssoContext;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method
