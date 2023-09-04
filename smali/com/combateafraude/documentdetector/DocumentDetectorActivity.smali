.class public Lcom/combateafraude/documentdetector/DocumentDetectorActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DocumentDetectorActivity.java"


# instance fields
.field private A:Landroidx/appcompat/app/AlertDialog;

.field private B:Z

.field private C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

.field private D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

.field private E:Z

.field private F:J

.field G:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

.field H:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

.field I:Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;

.field J:I

.field private y:Landroidx/appcompat/app/AlertDialog;

.field private z:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->B:Z

    .line 3
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->E:Z

    .line 4
    iput v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->J:I

    return-void
.end method

.method private A()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->Companion:Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getPersonId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DocumentDetector"

    const-string v4, "6.39.6"

    invoke-static {v0, v3, v4, v1, v2}, Lcom/combateafraude/documentdetector/controller/utils/SentryHelper;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->F:J

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isAutoDetection()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    new-array v2, v1, [Lcom/combateafraude/documentdetector/input/CaptureStage;

    new-instance v9, Lcom/combateafraude/documentdetector/input/CaptureStage;

    sget-object v8, Lcom/combateafraude/documentdetector/input/CaptureMode;->MANUAL:Lcom/combateafraude/documentdetector/input/CaptureMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/combateafraude/documentdetector/input/CaptureStage;-><init>(Ljava/lang/Long;ZLcom/combateafraude/documentdetector/input/QualitySettings;Lcom/combateafraude/documentdetector/input/DetectionSettings;Lcom/combateafraude/documentdetector/input/CaptureMode;)V

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-virtual {v0, v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->setCaptureStages([Lcom/combateafraude/documentdetector/input/CaptureStage;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->setUploadMode()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->setCaptureMode()V

    .line 7
    :goto_0
    iput-boolean v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->E:Z

    return-void
.end method

.method public static synthetic B(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->v(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    return-void
.end method

.method public static synthetic C(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->u(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->w()V

    return-void
.end method

.method public static synthetic E(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->x(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->o()V

    return-void
.end method

.method public static synthetic G(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->q(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    return-void
.end method

.method public static synthetic H(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->r(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    return-void
.end method

.method public static synthetic I(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->p(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->s(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic K(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->t()V

    return-void
.end method

.method public static synthetic L(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->z(Landroid/view/View;)V

    return-void
.end method

.method private synthetic o()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x103023a

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->I:Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;

    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A:Landroidx/appcompat/app/AlertDialog;

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 8
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->B:Z

    .line 12
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private synthetic p(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y()V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private synthetic q(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->getPopUpLayout()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/UploadSettings;->getPopUpLayout()Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/combateafraude/documentdetector/R$layout;->popup_upload_document_caf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget v2, Lcom/combateafraude/documentdetector/R$id;->ivDocument:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getIllustration()I

    move-result v3

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    sget v2, Lcom/combateafraude/documentdetector/R$id;->tvUploadDocumentTitle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getStepLabel()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x103023a

    invoke-direct {p1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->z:Landroidx/appcompat/app/AlertDialog;

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/view/Window;

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 12
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->z:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->z:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 14
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->z:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    mul-double v0, v0, v2

    double-to-int v0, v0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private synthetic r(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "DocumentDetectorResult"

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

    iget-wide v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->F:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->setExecutionTime(J)V

    .line 5
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SDK_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {p2, p1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->F:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;->setExecutionTime(J)V

    .line 8
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SDK_FINISHED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    :goto_0
    const-string p1, "DocumentDetector"

    .line 9
    invoke-static {p1}, Lcom/combateafraude/documentdetector/controller/utils/SentryHelper;->finish(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic s(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic t()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/combateafraude/documentdetector/R$layout;->permission_denied_popup:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x103023a

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    .line 8
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/view/Window;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 9
    sget v2, Lcom/combateafraude/documentdetector/R$id;->bAllowAccess:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/combateafraude/documentdetector/h;

    invoke-direct {v3, p0}, Lcom/combateafraude/documentdetector/h;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v2, Lcom/combateafraude/documentdetector/R$id;->bCancelPopUp:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/combateafraude/documentdetector/b;

    invoke-direct {v2, p0}, Lcom/combateafraude/documentdetector/b;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 14
    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v0, v2

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private synthetic u(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic v(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/combateafraude/documentdetector/R$layout;->popup_document_detector_caf:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/combateafraude/documentdetector/R$id;->ivDocument:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getIllustration()I

    move-result v2

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    sget v1, Lcom/combateafraude/documentdetector/R$id;->tvDocumentTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;->getStepLabel()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    sget p1, Lcom/combateafraude/documentdetector/R$id;->tvDocumentSubtitle:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getPopupDocumentSubtitleMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget p1, Lcom/combateafraude/documentdetector/R$id;->bOK:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getPositiveButtonMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    const v2, 0x103023a

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    .line 9
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Landroid/view/Window;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 10
    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    new-instance v2, Lcom/combateafraude/documentdetector/i;

    invoke-direct {v2, p0}, Lcom/combateafraude/documentdetector/i;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/combateafraude/documentdetector/k;

    invoke-direct {v0, p0}, Lcom/combateafraude/documentdetector/k;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic w()V
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/combateafraude/documentdetector/R$layout;->popup_permission_caf:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    const v3, 0x103023a

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 6
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 7
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    .line 8
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Landroid/view/Window;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 9
    sget v2, Lcom/combateafraude/documentdetector/R$id;->bPermission:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/combateafraude/documentdetector/d;

    invoke-direct {v2, p0}, Lcom/combateafraude/documentdetector/d;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 13
    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double v2, v2, v4

    double-to-int v0, v2

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private synthetic x(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y()V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x913

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_0

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "android.permission.CAMERA"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private synthetic z(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->closedPopup()V

    .line 3
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->G:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setPopUpVisibility(Z)V

    return-void
.end method


# virtual methods
.method public cancelPopupUpload(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->z:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public closeUploadSDK()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->dismissPopUp()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dismissPopUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->H:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->cleanView()V

    return-void
.end method

.method public finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V
    .locals 1
    .param p1    # Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->stopSecurityValidationThread()V

    .line 3
    :cond_0
    new-instance v0, Lcom/combateafraude/documentdetector/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/combateafraude/documentdetector/g;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->G:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v2, v0}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->setStepDoneSuccessfullyStatus(Z)V

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v1, :cond_2

    .line 3
    iget-object v3, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v3, v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->callBack(Z)V

    :cond_2
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_5

    .line 5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 6
    invoke-static {p1, p0}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->getfileExtension(Landroid/net/Uri;Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)Ljava/lang/String;

    move-result-object p2

    .line 7
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const-wide/16 v1, 0x400

    if-lt p3, v0, :cond_4

    .line 8
    :try_start_0
    invoke-static {p1, p0}, Lcom/combateafraude/documentdetector/controller/utils/UriUtils;->getFileNameFromUri(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->copyExternalFileToAppDir(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 10
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->imageUploaded(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {p0, p1}, Lcom/combateafraude/documentdetector/controller/utils/UriUtils;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 15
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->imageUploaded(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public declared-synchronized onBackPressed()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->onBackPressed()V
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

    const-string v1, "DocumentDetector"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/documentdetector/input/DocumentDetector;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getStyleId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/combateafraude/documentdetector/controller/utils/Session;->sessionId:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->Companion:Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;

    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getPersonId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isUseAnalytics()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v2}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getProxySettings()Lcom/combateafraude/documentdetector/input/ProxySettings;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics$Companion;->start(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Ljava/lang/String;Ljava/lang/Boolean;Lcom/combateafraude/documentdetector/input/ProxySettings;)V

    .line 6
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->SDK_STARTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkStartedEvent;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMobileToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/combateafraude/documentdetector/controller/analytics/ApplicationGetter;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkStartedEvent;-><init>(Lcom/combateafraude/documentdetector/input/DocumentDetector;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 7
    new-instance p1, Lcom/combateafraude/documentdetector/controller/server/utils/DeviceMemory;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/combateafraude/documentdetector/controller/server/utils/DeviceMemory;-><init>(Ljava/lang/Runtime;)V

    .line 8
    sget-object v0, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->MEMORY_INFO:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/MemoryInfoEvent;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/server/utils/DeviceMemory;->getUsedMemoryInMB()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/server/utils/DeviceMemory;->getTotalFreeMemoryInMB()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/MemoryInfoEvent;-><init>(JJ)V

    invoke-static {v0, v1}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 9
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->getActivityLayout()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    .line 12
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 13
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A()V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->showPermissionUploadPopUp()V

    goto :goto_2

    :cond_4
    const-string p1, "android.permission.CAMERA"

    .line 16
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A()V

    goto :goto_2

    .line 17
    :cond_5
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    .line 18
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Needs a DocumentDetector parameter called DocumentDetector in the caller intent."

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
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->onPause()V

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

    if-ne p1, v0, :cond_3

    .line 1
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_REQUESTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PermissionRequestedEvent;

    invoke-direct {v0, p2}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PermissionRequestedEvent;-><init>([Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 2
    array-length p1, p3

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 3
    aget p3, p3, p1

    if-nez p3, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->A()V

    .line 5
    sget-object p1, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_GRANTED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance p2, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PermissionGrantedEvent;

    invoke-direct {p2}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PermissionGrantedEvent;-><init>()V

    invoke-static {p1, p2}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p3, Lcom/combateafraude/documentdetector/controller/analytics/event/Event;->PERMISSION_DENIED:Lcom/combateafraude/documentdetector/controller/analytics/event/Event;

    new-instance v0, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PermissionDeniedEvent;

    invoke-direct {v0}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/PermissionDeniedEvent;-><init>()V

    invoke-static {p3, v0}, Lcom/combateafraude/documentdetector/controller/analytics/Analytics;->logEvent(Lcom/combateafraude/documentdetector/controller/analytics/event/Event;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/EventOtherInfo;)V

    .line 7
    iget-object p3, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object p3

    invoke-virtual {p3}, Lcom/combateafraude/documentdetector/input/UploadSettings;->isEnable()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    iget p3, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->J:I

    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->showPermissionUploadDeniedPopUp()V

    .line 10
    iget p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->J:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->J:I

    goto :goto_0

    .line 11
    :cond_1
    new-instance p3, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v0, Lcom/combateafraude/documentdetector/output/failure/PermissionReason;

    aget-object p1, p2, p1

    invoke-direct {v0, p1}, Lcom/combateafraude/documentdetector/output/failure/PermissionReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 12
    new-instance p1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {p1, p3}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-virtual {p0, p3, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p3, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;

    new-instance v0, Lcom/combateafraude/documentdetector/output/failure/PermissionReason;

    aget-object p1, p2, p1

    invoke-direct {v0, p1}, Lcom/combateafraude/documentdetector/output/failure/PermissionReason;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;-><init>(Lcom/combateafraude/documentdetector/output/failure/SDKFailure;)V

    .line 14
    new-instance p1, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;

    invoke-direct {p1, p3}, Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;-><init>(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;)V

    invoke-virtual {p0, p3, p1}, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->finishSDK(Lcom/combateafraude/documentdetector/output/DocumentDetectorResult;Lcom/combateafraude/documentdetector/controller/server/model/parameter/analytics/event/SdkFinishedEvent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public review(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/combateafraude/documentdetector/PreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "path"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getPreviewSettings()Lcom/combateafraude/documentdetector/input/PreviewSettings;

    move-result-object p1

    const-string v1, "previewSettings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getStyleId()I

    move-result p1

    const-string v1, "theme"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setCaptureMode()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v3}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getWhiteMask()I

    move-result v3

    iget-object v4, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v4}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getMessageSettings()Lcom/combateafraude/documentdetector/input/MessageSettings;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/combateafraude/documentdetector/input/MessageSettings;->getWaitMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v5}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->isMaskVisibility()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;-><init>(Landroid/app/Application;ILjava/lang/String;Ljava/lang/Boolean;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->G:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getLayoutId()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    .line 3
    sget v1, Lcom/combateafraude/documentdetector/BR;->viewModel:I

    iget-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->G:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 5
    new-instance v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    iget-object v2, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->G:Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;)V

    iput-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    return-void
.end method

.method public setUploadMode()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;-><init>(Landroid/app/Application;)V

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->H:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/combateafraude/documentdetector/R$layout;->pop_up_message:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;

    iput-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->I:Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;

    .line 3
    sget v1, Lcom/combateafraude/documentdetector/BR;->viewModel:I

    iget-object v3, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->H:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    invoke-virtual {v0, v1, v3}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->I:Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;

    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 5
    new-instance v0, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    iget-object v3, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->H:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetector;Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;)V

    iput-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    return-void
.end method

.method public showMessagePopUp()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->B:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->H:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->showMessagePopUp(Z)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/combateafraude/documentdetector/e;

    invoke-direct {v0, p0}, Lcom/combateafraude/documentdetector/e;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public showPermissionUploadDeniedPopUp()V
    .locals 1

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/j;

    invoke-direct {v0, p0}, Lcom/combateafraude/documentdetector/j;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPermissionUploadPopUp()V
    .locals 1

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/c;

    invoke-direct {v0, p0}, Lcom/combateafraude/documentdetector/c;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showPopUpUpload(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/f;

    invoke-direct {v0, p0, p1}, Lcom/combateafraude/documentdetector/f;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showStepDialog(Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/combateafraude/documentdetector/a;

    invoke-direct {v0, p0, p1}, Lcom/combateafraude/documentdetector/a;-><init>(Lcom/combateafraude/documentdetector/DocumentDetectorActivity;Lcom/combateafraude/documentdetector/input/DocumentDetectorStep;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tryAgainUpload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->C:Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/DocumentDetectorController;->restartUploadStep()V

    return-void
.end method

.method public uploadDocument(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/DocumentDetector;->getUploadSettings()Lcom/combateafraude/documentdetector/input/UploadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/input/UploadSettings;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "*/*"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->D:Lcom/combateafraude/documentdetector/input/DocumentDetector;

    invoke-static {v0}, Lcom/combateafraude/documentdetector/controller/utils/Utils;->getMimeTypesFromFileFormats(Lcom/combateafraude/documentdetector/input/DocumentDetector;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.MIME_TYPES"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x7b

    .line 4
    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5
    iget-object p1, p0, Lcom/combateafraude/documentdetector/DocumentDetectorActivity;->z:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
