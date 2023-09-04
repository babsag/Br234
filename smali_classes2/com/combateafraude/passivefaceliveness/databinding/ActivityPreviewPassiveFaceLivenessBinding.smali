.class public abstract Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityPreviewPassiveFaceLivenessBinding.java"


# instance fields
.field public final acceptButton:Lcom/google/android/material/button/MaterialButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final bTryAgain:Lcom/google/android/material/button/MaterialButton;
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

.field public final guidelineEnd2:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guidelineStart:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final guidelineStart2:Landroidx/constraintlayout/widget/Guideline;
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

.field public final guidelineTop2:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mViewModel:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final photoImageView:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvSubTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->acceptButton:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->bTryAgain:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->guidelineBottom:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->guidelineEnd:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->guidelineEnd2:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->guidelineStart:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->guidelineStart2:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->guidelineStatus:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->guidelineTop:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->guidelineTop2:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->photoImageView:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->tvSubTitle:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;
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
    sget v0, Lcom/combateafraude/passivefaceliveness/R$layout;->activity_preview_passive_face_liveness:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;
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

    invoke-static {p0, v0}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;
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
    sget v0, Lcom/combateafraude/passivefaceliveness/R$layout;->activity_preview_passive_face_liveness:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;
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
    sget v0, Lcom/combateafraude/passivefaceliveness/R$layout;->activity_preview_passive_face_liveness:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;

    return-object p0
.end method


# virtual methods
.method public getViewModel()Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPreviewPassiveFaceLivenessBinding;->mViewModel:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    return-object v0
.end method

.method public abstract setViewModel(Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;)V
    .param p1    # Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
