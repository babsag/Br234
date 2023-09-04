.class Lcom/ca/mas/core/service/MssoClient$c;
.super Ljava/lang/Object;
.source "MssoClient.java"

# interfaces
.implements Lcom/ca/mas/core/util/Functions$Unary;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/service/MssoClient;->cancelAll(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ca/mas/core/util/Functions$Unary<",
        "Ljava/lang/Boolean;",
        "Lcom/ca/mas/core/service/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/service/MssoClient;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/service/MssoClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/service/MssoClient$c;->a:Lcom/ca/mas/core/service/MssoClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ca/mas/core/service/c;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ca/mas/core/service/c;->a()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/ca/mas/core/service/MssoClient$c;->a:Lcom/ca/mas/core/service/MssoClient;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/ca/mas/core/service/c;

    invoke-virtual {p0, p1}, Lcom/ca/mas/core/service/MssoClient$c;->a(Lcom/ca/mas/core/service/c;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
