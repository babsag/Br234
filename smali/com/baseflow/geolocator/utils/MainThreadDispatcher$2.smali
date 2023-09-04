.class Lcom/baseflow/geolocator/utils/MainThreadDispatcher$2;
.super Ljava/lang/Object;
.source "MainThreadDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->dispatchSuccess(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$channelResponse",
            "val$result"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$2;->val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    iput-object p2, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$2;->val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    iget-object v1, p0, Lcom/baseflow/geolocator/utils/MainThreadDispatcher$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->success(Ljava/lang/Object;)V

    return-void
.end method
