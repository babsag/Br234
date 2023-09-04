.class Lcom/ca/mas/core/service/MssoService$a;
.super Ljava/lang/Object;
.source "MssoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ca/mas/core/service/MssoService;->k(Landroid/os/Bundle;Lcom/ca/mas/core/service/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/service/c;

.field final synthetic b:Lcom/ca/mas/core/service/MssoService;


# direct methods
.method constructor <init>(Lcom/ca/mas/core/service/MssoService;Lcom/ca/mas/core/service/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/service/MssoService$a;->b:Lcom/ca/mas/core/service/MssoService;

    iput-object p2, p0, Lcom/ca/mas/core/service/MssoService$a;->a:Lcom/ca/mas/core/service/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/MssoService$a;->b:Lcom/ca/mas/core/service/MssoService;

    iget-object v1, p0, Lcom/ca/mas/core/service/MssoService$a;->a:Lcom/ca/mas/core/service/c;

    invoke-static {v0, v1}, Lcom/ca/mas/core/service/MssoService;->a(Lcom/ca/mas/core/service/MssoService;Lcom/ca/mas/core/service/c;)V

    return-void
.end method
