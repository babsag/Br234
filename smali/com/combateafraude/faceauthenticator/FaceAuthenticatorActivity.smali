.class public Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FaceAuthenticatorActivity.java"


# instance fields
.field private A:Z

.field private B:J

.field private y:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

.field private z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->A:Z

    return-void
.end method

.method private o()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FaceAuthenticator"

    const-string v2, "5.8.13"

    invoke-static {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/utils/SentryHelper;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->B:J

    .line 3
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v3}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getWhiteMask()I

    move-result v3

    iget-object v4, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v4}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMessageSettings()Lcom/combateafraude/faceauthenticator/input/MessageSettings;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/combateafraude/faceauthenticator/input/MessageSettings;->getWaitMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;-><init>(Landroid/app/Application;ILjava/lang/String;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    .line 4
    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getLayoutId()I

    move-result v1

    invoke-static {p0, v1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    .line 5
    sget v2, Lcom/combateafraude/faceauthenticator/BR;->viewModel:I

    invoke-virtual {v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 6
    invoke-virtual {v1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-direct {v1, p0, v2, v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;-><init>(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;)V

    iput-object v1, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->y:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    .line 8
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isBrightnessIncrease()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->y:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->increaseBrightness()V

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->A:Z

    return-void
.end method

.method private synthetic p(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "FaceAuthenticatorResult"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->B:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->setExecutionTime(J)V

    .line 5
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SDK_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    invoke-static {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {p2, p1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->B:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->setExecutionTime(J)V

    .line 8
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SDK_FINISHED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    invoke-static {p1, p2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    :goto_0
    const-string p1, "FaceAuthenticator"

    .line 9
    invoke-static {p1}, Lcom/combateafraude/faceauthenticator/controller/utils/SentryHelper;->finish(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic q(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->p(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method


# virtual methods
.method public finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->y:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->stopSecurityValidationThread()V

    .line 3
    :cond_0
    new-instance v0, Lcom/combateafraude/faceauthenticator/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/combateafraude/faceauthenticator/a;-><init>(Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized onBackPressed()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->y:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCreate(Landroid/os/Bundle;)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FaceAuthenticator"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    iput-object v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getStyleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/combateafraude/faceauthenticator/controller/utils/Session;->sessionId:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->Companion:Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getPeopleId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->isUseAnalytics()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;)V

    .line 6
    sget-object p1, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->SDK_STARTED:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkStartedEvent;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->z:Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;

    invoke-virtual {v1}, Lcom/combateafraude/faceauthenticator/input/FaceAuthenticator;->getMobileToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/combateafraude/faceauthenticator/controller/analytics/ApplicationGetter;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkStartedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 7
    new-instance p1, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;-><init>(Ljava/lang/Runtime;)V

    .line 8
    sget-object v0, Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;->MEMORY_INFO:Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/MemoryInfoEvent;

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;->getUsedMemoryInMB()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/utils/DeviceMemory;->getFreeMemory()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/MemoryInfoEvent;-><init>(JJ)V

    invoke-static {v0, v1}, Lcom/combateafraude/faceauthenticator/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/faceauthenticator/controller/analytics/event/Event;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    const-string p1, "android.permission.CAMERA"

    .line 9
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->o()V

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.CAMERA"

    .line 11
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x913

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 12
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Needs a FaceAuthenticator parameter called FaceAuthenticator in the caller intent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->y:Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;

    invoke-virtual {v0}, Lcom/combateafraude/faceauthenticator/controller/FaceAuthenticatorController;->onPause()V

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x913

    if-ne p1, v0, :cond_1

    .line 1
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    aget p3, p3, p1

    if-nez p3, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->o()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p3, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;

    new-instance v0, Lcom/combateafraude/faceauthenticator/output/failure/PermissionReason;

    aget-object p1, p2, p1

    invoke-direct {v0, p1}, Lcom/combateafraude/faceauthenticator/output/failure/PermissionReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;-><init>(Lcom/combateafraude/faceauthenticator/output/failure/SDKFailure;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p3, p1}, Lcom/combateafraude/faceauthenticator/FaceAuthenticatorActivity;->finishSDK(Lcom/combateafraude/faceauthenticator/output/FaceAuthenticatorResult;Lcom/combateafraude/faceauthenticator/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_1
    :goto_0
    return-void
.end method
