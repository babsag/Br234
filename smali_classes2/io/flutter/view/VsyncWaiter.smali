.class public Lio/flutter/view/VsyncWaiter;
.super Ljava/lang/Object;
.source "VsyncWaiter.java"


# static fields
.field private static a:Lio/flutter/view/VsyncWaiter;


# instance fields
.field private final b:Landroid/view/WindowManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;


# direct methods
.method private constructor <init>(Landroid/view/WindowManager;)V
    .locals 1
    .param p1    # Landroid/view/WindowManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/view/VsyncWaiter$a;

    invoke-direct {v0, p0}, Lio/flutter/view/VsyncWaiter$a;-><init>(Lio/flutter/view/VsyncWaiter;)V

    iput-object v0, p0, Lio/flutter/view/VsyncWaiter;->c:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

    .line 3
    iput-object p1, p0, Lio/flutter/view/VsyncWaiter;->b:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic a(Lio/flutter/view/VsyncWaiter;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/view/VsyncWaiter;->b:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static getInstance(Landroid/view/WindowManager;)Lio/flutter/view/VsyncWaiter;
    .locals 1
    .param p0    # Landroid/view/WindowManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/view/VsyncWaiter;->a:Lio/flutter/view/VsyncWaiter;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/flutter/view/VsyncWaiter;

    invoke-direct {v0, p0}, Lio/flutter/view/VsyncWaiter;-><init>(Landroid/view/WindowManager;)V

    sput-object v0, Lio/flutter/view/VsyncWaiter;->a:Lio/flutter/view/VsyncWaiter;

    .line 3
    :cond_0
    sget-object p0, Lio/flutter/view/VsyncWaiter;->a:Lio/flutter/view/VsyncWaiter;

    return-object p0
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/VsyncWaiter;->c:Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;

    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterJNI;->setAsyncWaitForVsyncDelegate(Lio/flutter/embedding/engine/FlutterJNI$AsyncWaitForVsyncDelegate;)V

    .line 2
    iget-object v0, p0, Lio/flutter/view/VsyncWaiter;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    .line 3
    invoke-static {v0}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    return-void
.end method
