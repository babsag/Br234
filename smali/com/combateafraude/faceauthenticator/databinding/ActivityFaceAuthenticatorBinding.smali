.class public abstract Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityFaceAuthenticatorBinding.java"


# instance fields
.field public final cameraImageView:Landroidx/camera/view/PreviewView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guidelineBottom:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guidelineEnd:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guidelineStart:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guidelineStatus:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guidelineTop:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mViewModel:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final statusMessage:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvCurrentStepName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvPreviousStepName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/camera/view/PreviewView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->cameraImageView:Landroidx/camera/view/PreviewView;

    .line 3
    iput-object p5, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->guidelineBottom:Landroidx/constraintlayout/widget/Guideline;

    .line 4
    iput-object p6, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->guidelineEnd:Landroidx/constraintlayout/widget/Guideline;

    .line 5
    iput-object p7, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->guidelineStart:Landroidx/constraintlayout/widget/Guideline;

    .line 6
    iput-object p8, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->guidelineStatus:Landroidx/constraintlayout/widget/Guideline;

    .line 7
    iput-object p9, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->guidelineTop:Landroidx/constraintlayout/widget/Guideline;

    .line 8
    iput-object p10, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->statusMessage:Landroid/widget/TextView;

    .line 9
    iput-object p11, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->tvCurrentStepName:Landroid/widget/TextView;

    .line 10
    iput-object p12, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->tvPreviousStepName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/combateafraude/faceauthenticator/R$layout;->activity_face_authenticator:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    sget v0, Lcom/combateafraude/faceauthenticator/R$layout;->activity_face_authenticator:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    sget v0, Lcom/combateafraude/faceauthenticator/R$layout;->activity_face_authenticator:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;

    return-object p0
.end method


# virtual methods
.method public getViewModel()Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->mViewModel:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    return-object v0
.end method

.method public abstract setViewModel(Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;)V
    .param p1    # Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
