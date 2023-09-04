.class Lcom/ca/mas/core/http/SSLSocketFactoryProvider$a;
.super Ljava/lang/Object;
.source "SSLSocketFactoryProvider.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/http/SSLSocketFactoryProvider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/http/SSLSocketFactoryProvider;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/http/SSLSocketFactoryProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider$a;->a:Lcom/ca/mas/core/http/SSLSocketFactoryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ca/mas/core/http/SSLSocketFactoryProvider$a;->a:Lcom/ca/mas/core/http/SSLSocketFactoryProvider;

    invoke-static {p1}, Lcom/ca/mas/core/http/SSLSocketFactoryProvider;->a(Lcom/ca/mas/core/http/SSLSocketFactoryProvider;)Ljava/util/Map;

    move-result-object p1

    check-cast p2, Landroid/net/Uri;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
