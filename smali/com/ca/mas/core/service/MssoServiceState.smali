.class public Lcom/ca/mas/core/service/MssoServiceState;
.super Ljava/lang/Object;
.source "MssoServiceState.java"


# static fields
.field private static a:Lcom/ca/mas/core/service/MssoServiceState;


# instance fields
.field private b:Lcom/ca/mas/core/service/MssoService;

.field private c:Z

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ca/mas/core/service/MssoServiceState;
    .locals 1

    .line 1
    sget-object v0, Lcom/ca/mas/core/service/MssoServiceState;->a:Lcom/ca/mas/core/service/MssoServiceState;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/ca/mas/core/service/MssoServiceState;

    invoke-direct {v0}, Lcom/ca/mas/core/service/MssoServiceState;-><init>()V

    sput-object v0, Lcom/ca/mas/core/service/MssoServiceState;->a:Lcom/ca/mas/core/service/MssoServiceState;

    .line 3
    :cond_0
    sget-object v0, Lcom/ca/mas/core/service/MssoServiceState;->a:Lcom/ca/mas/core/service/MssoServiceState;

    return-object v0
.end method


# virtual methods
.method public getMssoService()Lcom/ca/mas/core/service/MssoService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/MssoServiceState;->b:Lcom/ca/mas/core/service/MssoService;

    return-object v0
.end method

.method public getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ca/mas/core/service/MssoServiceState;->d:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ca/mas/core/service/MssoServiceState;->c:Z

    return v0
.end method

.method public setBound(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ca/mas/core/service/MssoServiceState;->c:Z

    return-void
.end method

.method public setMssoService(Lcom/ca/mas/core/service/MssoService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/service/MssoServiceState;->b:Lcom/ca/mas/core/service/MssoService;

    return-void
.end method

.method public setServiceConnection(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ca/mas/core/service/MssoServiceState;->d:Landroid/content/ServiceConnection;

    return-void
.end method
