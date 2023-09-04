.class Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;
.super Ljava/lang/Object;
.source "ForwardGeocodingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;->startTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;

.field final synthetic val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

.field final synthetic val$geocoder:Landroid/location/Geocoder;

.field final synthetic val$options:Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;Landroid/location/Geocoder;Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$geocoder",
            "val$options",
            "val$channelResponse"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->this$0:Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;

    iput-object p2, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->val$geocoder:Landroid/location/Geocoder;

    iput-object p3, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->val$options:Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;

    iput-object p4, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->val$geocoder:Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->val$options:Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;

    invoke-virtual {v2}, Lcom/baseflow/geolocator/data/ForwardGeocodingOptions;->getAddressToLookup()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    .line 4
    invoke-static {v1}, Lcom/baseflow/geolocator/data/AddressMapper;->toHashMapList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v2, v1}, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->dispatchSuccess(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    const-string v2, "ERROR_GEOCODNG_ADDRESSNOTFOUND"

    const-string v3, "Unable to find coordinates matching the supplied address."

    invoke-static {v1, v2, v3, v0}, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->dispatchError(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    iget-object v2, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->val$channelResponse:Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    const-string v3, "ERROR_GEOCODING_ADDRESS"

    .line 8
    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v2, v3, v1, v0}, Lcom/baseflow/geolocator/utils/MainThreadDispatcher;->dispatchError(Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->this$0:Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask$1;->this$0:Lcom/baseflow/geolocator/tasks/ForwardGeocodingTask;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    .line 11
    throw v0
.end method
