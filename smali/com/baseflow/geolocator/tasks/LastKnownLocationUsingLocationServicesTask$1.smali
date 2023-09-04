.class Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$1;
.super Ljava/lang/Object;
.source "LastKnownLocationUsingLocationServicesTask.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;->startTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$1;->this$0:Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$1;->this$0:Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/Task;->getTaskContext()Lcom/baseflow/geolocator/tasks/TaskContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baseflow/geolocator/tasks/TaskContext;->getResult()Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Lcom/baseflow/geolocator/data/wrapper/ChannelResponse;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask$1;->this$0:Lcom/baseflow/geolocator/tasks/LastKnownLocationUsingLocationServicesTask;

    invoke-virtual {p1}, Lcom/baseflow/geolocator/tasks/Task;->stopTask()V

    return-void
.end method
