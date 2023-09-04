.class public Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;
.super Ljava/lang/Object;
.source "SDKViewModelFactory.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private a:Landroid/app/Application;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Boolean;

.field private e:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->a:Landroid/app/Application;

    .line 9
    sget-object p1, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->e:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->a:Landroid/app/Application;

    .line 3
    iput p2, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->b:I

    .line 4
    iput-object p3, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->d:Ljava/lang/Boolean;

    .line 6
    sget-object p1, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->CAPTURE:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->e:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->e:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    sget-object v1, Lcom/combateafraude/documentdetector/controller/utils/SDKMode;->UPLOAD:Lcom/combateafraude/documentdetector/controller/utils/SDKMode;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;-><init>(Landroid/app/Application;)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->a:Landroid/app/Application;

    iget v2, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->b:I

    iget-object v3, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModelFactory;->d:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;-><init>(Landroid/app/Application;ILjava/lang/String;Z)V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method

.method public synthetic create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/i;->b(Landroidx/lifecycle/ViewModelProvider$Factory;Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
