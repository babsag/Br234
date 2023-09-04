.class public Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PassiveFaceLivenessActivity.java"


# instance fields
.field private A:Z

.field private B:J

.field private y:Lcaf/io/L;

.field private z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->A:Z

    return-void
.end method

.method private o()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide v1, -0x28073da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x281b3da67cb6L

    invoke-static {v2, v3}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcaf/io/b;->a()Lcaf/io/b;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcaf/io/b;->b(Lcaf/io/b;)Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 4
    :goto_0
    sget v5, Lcaf/io/M;->a:I

    const-wide v5, -0x903da67cb6L

    .line 5
    invoke-static {v5, v6}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "tracking_id"

    .line 6
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v3}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Lcaf/io/Y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->B:J

    .line 10
    new-instance v0, Lcaf/io/L$a;

    iget-object v1, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-direct {v0, p0, v1}, Lcaf/io/L$a;-><init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V

    .line 11
    new-instance v1, Lcaf/io/L;

    invoke-direct {v1, v0}, Lcaf/io/L;-><init>(Lcaf/io/L$a;)V

    .line 12
    iput-object v1, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->y:Lcaf/io/L;

    .line 13
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->y:Lcaf/io/L;

    invoke-virtual {v0}, Lcaf/io/L;->g()V

    :cond_2
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->A:Z

    return-void
.end method

.method private p(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-wide v1, -0x28263da67cb6L

    .line 2
    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

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

    iget-wide v2, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->B:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->setExecutionTime(J)V

    .line 5
    sget-object p1, Lcaf/io/t;->m:Lcaf/io/t;

    .line 6
    sget-object v0, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v0, p1, p2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {p2, p1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;)V

    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->B:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->setExecutionTime(J)V

    .line 9
    sget-object p1, Lcaf/io/t;->m:Lcaf/io/t;

    .line 10
    sget-object v0, Lcaf/io/b;->e:Lcaf/io/b$a;

    invoke-virtual {v0, p1, p2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    :goto_0
    const-wide p1, -0x28403da67cb6L

    .line 11
    invoke-static {p1, p2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcaf/io/Y;->b:I

    const-string p2, "SDKFinish"

    .line 12
    invoke-static {p1, p2}, Lio/sentry/Sentry;->addBreadcrumb(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic q(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->p(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method


# virtual methods
.method public a()Lcaf/io/L;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->y:Lcaf/io/L;

    return-object v0
.end method

.method public a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 1
    .param p1    # Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->y:Lcaf/io/L;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcaf/io/L;->t()V

    .line 3
    :cond_0
    new-instance v0, Lcom/combateafraude/passivefaceliveness/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/combateafraude/passivefaceliveness/a;-><init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/combateafraude/passivefaceliveness/PreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    sget-object v1, Lcom/combateafraude/passivefaceliveness/PreviewActivity$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    sget-object p1, Lcom/combateafraude/passivefaceliveness/PreviewActivity$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->n()Lcom/combateafraude/passivefaceliveness/input/PreviewSettings;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    sget-object p1, Lcom/combateafraude/passivefaceliveness/PreviewActivity$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v1}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->x()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object p3, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->y:Lcaf/io/L;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Lcaf/io/L;->a(Z)V

    return-void
.end method

.method public declared-synchronized onBackPressed()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->y:Lcaf/io/L;

    invoke-virtual {v0}, Lcaf/io/L;->o()V
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide v1, -0x27683da67cb6L

    invoke-static {v1, v2}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    iput-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->x()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcaf/io/a0;->a:Ljava/lang/String;

    .line 5
    sget-object p1, Lcaf/io/b;->e:Lcaf/io/b$a;

    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->F()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v0}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->o()Lcom/combateafraude/passivefaceliveness/input/ProxySettings;

    move-result-object v5

    const-string v0, "sdkActivity"

    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcaf/io/b;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcaf/io/b;-><init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/passivefaceliveness/input/ProxySettings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcaf/io/b;->e(Lcaf/io/b;)V

    .line 8
    sget-object v0, Lcaf/io/t;->d:Lcaf/io/t;

    new-instance v1, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkStartedEvent;

    iget-object v2, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->z:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    invoke-virtual {v2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->j()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkStartedEvent;-><init>(Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0, v1}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 12
    new-instance v0, Lcaf/io/q;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-direct {v0, v1}, Lcaf/io/q;-><init>(Ljava/lang/Runtime;)V

    .line 13
    sget-object v1, Lcaf/io/t;->s:Lcaf/io/t;

    new-instance v2, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/MemoryInfoEvent;

    invoke-virtual {v0}, Lcaf/io/q;->b()J

    move-result-wide v3

    invoke-virtual {v0}, Lcaf/io/q;->a()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/MemoryInfoEvent;-><init>(JJ)V

    .line 14
    invoke-virtual {p1, v1, v2}, Lcaf/io/b$a;->a(Lcaf/io/t;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    const-wide v0, -0x27d33da67cb6L

    .line 15
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->o()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const-wide v0, -0x27ed3da67cb6L

    .line 17
    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/16 v0, 0x913

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-wide v0, -0x277c3da67cb6L

    invoke-static {v0, v1}, Lcaf/io/o;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->y:Lcaf/io/L;

    invoke-virtual {v0}, Lcaf/io/L;->q()V

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

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 v0, 0x913

    if-ne p1, v0, :cond_1

    .line 2
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 3
    aget p3, p3, p1

    if-nez p3, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->o()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;

    new-instance v0, Lcom/combateafraude/passivefaceliveness/output/failure/PermissionReason;

    aget-object p1, p2, p1

    invoke-direct {v0, p1}, Lcom/combateafraude/passivefaceliveness/output/failure/PermissionReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;-><init>(Lcom/combateafraude/passivefaceliveness/output/failure/SDKFailure;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p3, p1}, Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;->a(Lcom/combateafraude/passivefaceliveness/output/PassiveFaceLivenessResult;Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_1
    :goto_0
    return-void
.end method
