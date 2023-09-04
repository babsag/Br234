.class Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;
.super Ljava/lang/Object;
.source "MainThreadDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->dispatchError(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$channelName:Ljava/lang/String;

.field final synthetic val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

.field final synthetic val$details:Ljava/lang/Object;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$channelResponse",
            "val$channelName",
            "val$error",
            "val$details"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;->val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    iput-object p2, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;->val$channelName:Ljava/lang/String;

    iput-object p3, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;->val$error:Ljava/lang/String;

    iput-object p4, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;->val$details:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;->val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    iget-object v1, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;->val$channelName:Ljava/lang/String;

    iget-object v2, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;->val$error:Ljava/lang/String;

    iget-object v3, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$1;->val$details:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
