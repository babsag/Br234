.class Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;
.super Ljava/lang/Object;
.source "MethodCallHandlerImpl.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/firebase/firebaseremoteconfig/a;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

.field final synthetic b:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic c:Lio/flutter/plugins/firebase/firebaseremoteconfig/a;


# direct methods
.method constructor <init>(Lio/flutter/plugins/firebase/firebaseremoteconfig/a;Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$firebaseRemoteConfig",
            "val$result"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;->c:Lio/flutter/plugins/firebase/firebaseremoteconfig/a;

    iput-object p2, p0, Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;->a:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    iput-object p3, p0, Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;->a:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInfo()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;->getFetchTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lastFetchTime"

    .line 5
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;->c:Lio/flutter/plugins/firebase/firebaseremoteconfig/a;

    .line 7
    invoke-interface {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;->getLastFetchStatus()I

    move-result v0

    invoke-static {v2, v0}, Lio/flutter/plugins/firebase/firebaseremoteconfig/a;->a(Lio/flutter/plugins/firebase/firebaseremoteconfig/a;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "lastFetchStatus"

    .line 8
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 11
    instance-of v0, p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigFetchThrottledException;->getThrottleEndTimeMillis()J

    move-result-wide v2

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "fetchThrottledEnd"

    .line 15
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "fetchFailedThrottled"

    const-string v2, "Fetch has been throttled. See the error\'s FETCH_THROTTLED_END field for throttle end time."

    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "fetchFailed"

    const-string v2, "Unable to complete fetch. Reason is unknown but this could be due to lack of connectivity."

    invoke-interface {p1, v0, v2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lio/flutter/plugins/firebase/firebaseremoteconfig/a$a;->b:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
