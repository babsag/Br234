.class public Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;
.super Ljava/lang/Object;
.source "SDKViewModelFactory.java"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private a:Landroid/app/Application;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;->a:Landroid/app/Application;

    .line 3
    iput p2, p0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;->b:I

    .line 4
    iput-object p3, p0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 4
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
    new-instance v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    iget-object v1, p0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;->a:Landroid/app/Application;

    iget v2, p0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;->b:I

    iget-object v3, p0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModelFactory;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;-><init>(Landroid/app/Application;ILjava/lang/String;)V

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
