.class public Lcaf/io/L$a;
.super Ljava/lang/Object;
.source "PassiveFaceLivenessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcaf/io/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

.field private final b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

.field private final c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

.field private final d:Lcaf/io/w;

.field private final e:Lcaf/io/f;

.field private final f:Lcaf/io/T;

.field private g:Lcaf/io/j;


# direct methods
.method public constructor <init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcaf/io/L$a;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    .line 3
    iput-object p2, p0, Lcaf/io/L$a;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    .line 4
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    new-instance v1, Lcaf/io/P;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->y()I

    move-result v3

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->i()Lcom/combateafraude/passivefaceliveness/input/MessageSettings;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/combateafraude/passivefaceliveness/input/MessageSettings;->getWaitMessage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->h()Z

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcaf/io/P;-><init>(Landroid/app/Application;ILjava/lang/String;Z)V

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v1, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    iput-object v0, p0, Lcaf/io/L$a;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    .line 5
    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->g()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 7
    invoke-virtual {v1, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 8
    new-instance v0, Lcaf/io/w;

    invoke-direct {v0}, Lcaf/io/w;-><init>()V

    iput-object v0, p0, Lcaf/io/L$a;->d:Lcaf/io/w;

    .line 9
    new-instance v0, Lcaf/io/f;

    invoke-direct {v0, p1}, Lcaf/io/f;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcaf/io/L$a;->e:Lcaf/io/f;

    .line 10
    new-instance v0, Lcaf/io/T;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->u()Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;

    move-result-object v3

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->s()Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;

    move-result-object v4

    invoke-virtual {p2}, Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;->t()Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;

    move-result-object v5

    move-object v1, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcaf/io/T;-><init>(Landroid/content/Context;Lcom/combateafraude/passivefaceliveness/input/SensorStabilitySettings;Lcom/combateafraude/passivefaceliveness/input/SensorLuminositySettings;Lcom/combateafraude/passivefaceliveness/input/SensorOrientationSettings;Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V

    iput-object v0, p0, Lcaf/io/L$a;->f:Lcaf/io/T;

    .line 11
    new-instance v0, Lcaf/io/h;

    sget v1, Lcom/combateafraude/passivefaceliveness/R$id;->cameraImageView:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/camera/view/PreviewView;

    invoke-direct {v0, p1, v1, p2}, Lcaf/io/h;-><init>(Landroid/app/Activity;Landroidx/camera/view/PreviewView;Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;)V

    iput-object v0, p0, Lcaf/io/L$a;->g:Lcaf/io/j;

    return-void
.end method

.method static synthetic a(Lcaf/io/L$a;)Lcaf/io/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/L$a;->g:Lcaf/io/j;

    return-object p0
.end method

.method static synthetic b(Lcaf/io/L$a;)Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/L$a;->a:Lcom/combateafraude/passivefaceliveness/input/PassiveFaceLiveness;

    return-object p0
.end method

.method static synthetic c(Lcaf/io/L$a;)Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/L$a;->b:Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;

    return-object p0
.end method

.method static synthetic d(Lcaf/io/L$a;)Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/L$a;->c:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    return-object p0
.end method

.method static synthetic e(Lcaf/io/L$a;)Lcaf/io/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/L$a;->d:Lcaf/io/w;

    return-object p0
.end method

.method static synthetic f(Lcaf/io/L$a;)Lcaf/io/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/L$a;->e:Lcaf/io/f;

    return-object p0
.end method

.method static synthetic g(Lcaf/io/L$a;)Lcaf/io/T;
    .locals 0

    .line 1
    iget-object p0, p0, Lcaf/io/L$a;->f:Lcaf/io/T;

    return-object p0
.end method
