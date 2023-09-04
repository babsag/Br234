.class public Lcom/ca/mas/core/service/MssoService$MASBinder;
.super Landroid/os/Binder;
.source "MssoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ca/mas/core/service/MssoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MASBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/ca/mas/core/service/MssoService;


# direct methods
.method public constructor <init>(Lcom/ca/mas/core/service/MssoService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/service/MssoService$MASBinder;->a:Lcom/ca/mas/core/service/MssoService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/ca/mas/core/service/MssoService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/MssoService$MASBinder;->a:Lcom/ca/mas/core/service/MssoService;

    return-object v0
.end method
