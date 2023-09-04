.class public Lcom/baseflow/geolocator/utils/MainThreadDispatcher;
.super Ljava/lang/Object;
.source "MainThreadDispatcher.java"


# static fields
.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatch(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->initHandlerIfNull()V

    .line 2
    sget-object v0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static dispatchError(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "channelResponse",
            "channelName",
            "error",
            "details"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->initHandlerIfNull()V

    .line 2
    sget-object v0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;-><init>(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static dispatchSuccess(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "channelResponse",
            "result"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->initHandlerIfNull()V

    .line 2
    sget-object v0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$2;

    invoke-direct {v1, p0, p1}, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$2;-><init>(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static initHandlerIfNull()V
    .locals 2

    .line 1
    sget-object v0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
