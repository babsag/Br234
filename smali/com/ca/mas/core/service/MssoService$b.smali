.class final Lcom/ca/mas/core/service/MssoService$b;
.super Landroid/os/Handler;
.source "MssoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/service/MssoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/service/MssoService;


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/service/MssoService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/service/MssoService$b;->a:Lcom/ca/mas/core/service/MssoService;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/MssoService$b;->a:Lcom/ca/mas/core/service/MssoService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Lcom/ca/mas/core/service/MssoService;->onHandleWork(Landroid/content/Intent;)V

    return-void
.end method
