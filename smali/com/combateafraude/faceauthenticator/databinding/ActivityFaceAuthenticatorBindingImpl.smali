.class public Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;
.super Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;
.source "ActivityFaceAuthenticatorBindingImpl.java"

# interfaces
.implements Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener$Listener;


# static fields
.field private static final z:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final A:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final B:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final C:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final D:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final E:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final F:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final G:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final H:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final I:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final J:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final K:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final L:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private M:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->z:Landroid/util/SparseIntArray;

    .line 2
    sget v1, Lcom/combateafraude/faceauthenticator/R$id;->guidelineStart:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget v1, Lcom/combateafraude/faceauthenticator/R$id;->guidelineEnd:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget v1, Lcom/combateafraude/faceauthenticator/R$id;->guidelineTop:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget v1, Lcom/combateafraude/faceauthenticator/R$id;->guidelineStatus:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget v1, Lcom/combateafraude/faceauthenticator/R$id;->guidelineBottom:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 7
    sget v1, Lcom/combateafraude/faceauthenticator/R$id;->cameraImageView:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->z:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 14

    move-object v13, p0

    const/16 v0, 0x11

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/camera/view/PreviewView;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v3, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/camera/view/PreviewView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const/4 v0, 0x0

    .line 4
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->B:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xa

    .line 8
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->C:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v2, 0xb

    .line 10
    aget-object v2, p3, v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->D:Landroid/widget/ProgressBar;

    .line 11
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x2

    .line 12
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->E:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x3

    .line 14
    aget-object v4, p3, v3

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->F:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x4

    .line 16
    aget-object v4, p3, v4

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v4, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->G:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 17
    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x5

    .line 18
    aget-object v4, p3, v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v4, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0x8

    .line 20
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->I:Landroid/widget/ImageView;

    .line 21
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 22
    iget-object v4, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->statusMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v4, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->tvCurrentStepName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v4, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->tvPreviousStepName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 25
    invoke-virtual {p0, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 26
    new-instance v1, Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener;-><init>(Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->J:Landroid/view/View$OnClickListener;

    .line 27
    new-instance v1, Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener;

    invoke-direct {v1, p0, v0}, Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener;-><init>(Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->K:Landroid/view/View$OnClickListener;

    .line 28
    new-instance v0, Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener;

    invoke-direct {v0, p0, v3}, Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener;-><init>(Lcom/combateafraude/faceauthenticator/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->L:Landroid/view/View$OnClickListener;

    .line 29
    invoke-virtual {p0}, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->mViewModel:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->takePhoto()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->mViewModel:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->switchCamera()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->mViewModel:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 6
    invoke-virtual {p1}, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->close()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 39

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->mViewModel:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    const-wide/16 v6, 0xfff

    and-long/2addr v6, v2

    const-wide/16 v12, 0xc10

    const-wide/16 v14, 0xc20

    const-wide/16 v16, 0xc08

    const-wide/16 v18, 0xc04

    const-wide/16 v20, 0xc02

    const-wide/16 v22, 0xd00

    const-wide/16 v24, 0xc40

    const-wide/16 v26, 0xc01

    const/4 v10, 0x0

    cmp-long v28, v6, v4

    if-eqz v28, :cond_2d

    and-long v6, v2, v26

    cmp-long v29, v6, v4

    if-eqz v29, :cond_5

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->manualCaptureButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v10, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 9
    :goto_1
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v29, :cond_3

    if-eqz v6, :cond_2

    const-wide/16 v29, 0x2000

    goto :goto_2

    :cond_2
    const-wide/16 v29, 0x1000

    :goto_2
    or-long v2, v2, v29

    :cond_3
    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const/16 v6, 0x8

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x0

    :goto_4
    and-long v29, v2, v20

    cmp-long v7, v29, v4

    if-eqz v7, :cond_b

    if-eqz v0, :cond_6

    .line 10
    iget-object v10, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->switchCameraButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    :goto_5
    const/4 v11, 0x1

    .line 11
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_7

    .line 12
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_6

    :cond_7
    const/4 v10, 0x0

    .line 13
    :goto_6
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v7, :cond_9

    if-eqz v10, :cond_8

    const-wide/32 v31, 0x20000

    goto :goto_7

    :cond_8
    const-wide/32 v31, 0x10000

    :goto_7
    or-long v2, v2, v31

    :cond_9
    if-eqz v10, :cond_a

    goto :goto_8

    :cond_a
    const/16 v7, 0x8

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v7, 0x0

    :goto_9
    and-long v10, v2, v18

    cmp-long v31, v10, v4

    if-eqz v31, :cond_11

    if-eqz v0, :cond_c

    .line 14
    iget-object v10, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->loadingStatus:Landroidx/lifecycle/MutableLiveData;

    goto :goto_a

    :cond_c
    const/4 v10, 0x0

    :goto_a
    const/4 v11, 0x2

    .line 15
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_d

    .line 16
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_b

    :cond_d
    const/4 v10, 0x0

    .line 17
    :goto_b
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v31, :cond_f

    if-eqz v10, :cond_e

    const-wide/32 v31, 0x8000

    goto :goto_c

    :cond_e
    const-wide/16 v31, 0x4000

    :goto_c
    or-long v2, v2, v31

    :cond_f
    if-eqz v10, :cond_10

    goto :goto_d

    :cond_10
    const/16 v10, 0x8

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v10, 0x0

    :goto_e
    and-long v31, v2, v16

    cmp-long v11, v31, v4

    if-eqz v11, :cond_13

    if-eqz v0, :cond_12

    .line 18
    iget-object v11, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->currentStepName:Landroidx/lifecycle/MutableLiveData;

    goto :goto_f

    :cond_12
    const/4 v11, 0x0

    :goto_f
    const/4 v8, 0x3

    .line 19
    invoke-virtual {v1, v8, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_13

    .line 20
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_10

    :cond_13
    const/4 v8, 0x0

    :goto_10
    and-long v33, v2, v12

    cmp-long v9, v33, v4

    if-eqz v9, :cond_19

    if-eqz v0, :cond_14

    .line 21
    iget-object v11, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

    goto :goto_11

    :cond_14
    const/4 v11, 0x0

    :goto_11
    const/4 v12, 0x4

    .line 22
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_15

    .line 23
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_12

    :cond_15
    const/4 v11, 0x0

    .line 24
    :goto_12
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v9, :cond_17

    if-eqz v11, :cond_16

    const-wide/32 v12, 0x80000

    goto :goto_13

    :cond_16
    const-wide/32 v12, 0x40000

    :goto_13
    or-long/2addr v2, v12

    :cond_17
    if-eqz v11, :cond_18

    goto :goto_14

    :cond_18
    const/16 v9, 0x8

    goto :goto_15

    :cond_19
    :goto_14
    const/4 v9, 0x0

    :goto_15
    and-long v11, v2, v14

    cmp-long v13, v11, v4

    if-eqz v13, :cond_1f

    if-eqz v0, :cond_1a

    .line 25
    iget-object v11, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->statusVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_16

    :cond_1a
    const/4 v11, 0x0

    :goto_16
    const/4 v12, 0x5

    .line 26
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_1b

    .line 27
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_17

    :cond_1b
    const/4 v11, 0x0

    .line 28
    :goto_17
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v11

    if-eqz v13, :cond_1d

    if-eqz v11, :cond_1c

    const-wide/32 v12, 0x800000

    goto :goto_18

    :cond_1c
    const-wide/32 v12, 0x400000

    :goto_18
    or-long/2addr v2, v12

    :cond_1d
    if-eqz v11, :cond_1e

    goto :goto_19

    :cond_1e
    const/16 v11, 0x8

    goto :goto_1a

    :cond_1f
    :goto_19
    const/4 v11, 0x0

    :goto_1a
    and-long v12, v2, v24

    cmp-long v35, v12, v4

    if-eqz v35, :cond_22

    if-eqz v0, :cond_20

    .line 29
    iget-object v12, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->maskLayout:Landroidx/lifecycle/MutableLiveData;

    goto :goto_1b

    :cond_20
    const/4 v12, 0x0

    :goto_1b
    const/4 v13, 0x6

    .line 30
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_21

    .line 31
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    goto :goto_1c

    :cond_21
    const/4 v12, 0x0

    .line 32
    :goto_1c
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v12

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    goto :goto_1d

    :cond_22
    const/4 v12, 0x0

    :goto_1d
    const-wide/16 v31, 0xc80

    and-long v35, v2, v31

    cmp-long v13, v35, v4

    if-eqz v13, :cond_24

    if-eqz v0, :cond_23

    .line 34
    iget-object v13, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->previousStepName:Landroidx/lifecycle/MutableLiveData;

    goto :goto_1e

    :cond_23
    const/4 v13, 0x0

    :goto_1e
    const/4 v14, 0x7

    .line 35
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_24

    .line 36
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_1f

    :cond_24
    const/4 v13, 0x0

    :goto_1f
    and-long v14, v2, v22

    cmp-long v37, v14, v4

    if-eqz v37, :cond_2a

    if-eqz v0, :cond_25

    .line 37
    iget-object v14, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->previousStepDone:Landroidx/lifecycle/MutableLiveData;

    goto :goto_20

    :cond_25
    const/4 v14, 0x0

    :goto_20
    const/16 v15, 0x8

    .line 38
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_26

    .line 39
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_21

    :cond_26
    const/4 v14, 0x0

    .line 40
    :goto_21
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    if-eqz v37, :cond_28

    if-eqz v14, :cond_27

    const-wide/32 v37, 0x200000

    goto :goto_22

    :cond_27
    const-wide/32 v37, 0x100000

    :goto_22
    or-long v2, v2, v37

    :cond_28
    if-eqz v14, :cond_29

    goto :goto_23

    :cond_29
    const-wide/16 v14, 0xe00

    const/16 v29, 0x8

    goto :goto_24

    :cond_2a
    :goto_23
    const-wide/16 v14, 0xe00

    const/16 v29, 0x0

    :goto_24
    and-long v37, v2, v14

    cmp-long v14, v37, v4

    if-eqz v14, :cond_2c

    if-eqz v0, :cond_2b

    .line 41
    iget-object v0, v0, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;->statusMessage:Landroidx/lifecycle/MutableLiveData;

    goto :goto_25

    :cond_2b
    const/4 v0, 0x0

    :goto_25
    const/16 v14, 0x9

    .line 42
    invoke-virtual {v1, v14, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_2c

    .line 43
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v14, v13

    move-object v13, v8

    move-object v8, v0

    move v0, v10

    move/from16 v10, v29

    goto :goto_26

    :cond_2c
    move v0, v10

    move-object v14, v13

    move/from16 v10, v29

    move-object v13, v8

    const/4 v8, 0x0

    goto :goto_26

    :cond_2d
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_26
    and-long v24, v2, v24

    cmp-long v15, v24, v4

    if-eqz v15, :cond_2e

    .line 44
    iget-object v15, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->B:Landroid/widget/ImageView;

    invoke-static {v15, v12}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    and-long v22, v2, v22

    cmp-long v12, v22, v4

    if-eqz v12, :cond_2f

    .line 45
    iget-object v12, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->C:Landroid/widget/ImageView;

    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2f
    and-long v18, v2, v18

    cmp-long v10, v18, v4

    if-eqz v10, :cond_30

    .line 46
    iget-object v10, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->D:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_30
    const-wide/16 v18, 0x800

    and-long v18, v2, v18

    cmp-long v0, v18, v4

    if-eqz v0, :cond_31

    .line 47
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->E:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->F:Landroid/widget/ImageView;

    iget-object v10, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->G:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v10, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_31
    and-long v18, v2, v20

    cmp-long v0, v18, v4

    if-eqz v0, :cond_32

    .line 50
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_32
    and-long v18, v2, v26

    cmp-long v0, v18, v4

    if-eqz v0, :cond_33

    .line 51
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->G:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    :cond_33
    const-wide/16 v6, 0xc20

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_34

    .line 52
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_34
    const-wide/16 v6, 0xc10

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_35

    .line 53
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_35
    const-wide/16 v6, 0xe00

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_36

    .line 54
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->statusMessage:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_36
    and-long v6, v2, v16

    cmp-long v0, v6, v4

    if-eqz v0, :cond_37

    .line 55
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->tvCurrentStepName:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_37
    const-wide/16 v6, 0xc80

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_38

    .line 56
    iget-object v0, v1, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->tvPreviousStepName:Landroid/widget/TextView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_38
    return-void

    :catchall_0
    move-exception v0

    .line 57
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x800

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1
    :pswitch_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 2
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x200

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 6
    :pswitch_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 7
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_1

    .line 8
    monitor-enter p0

    .line 9
    :try_start_1
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 10
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 11
    :pswitch_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 12
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_2

    .line 13
    monitor-enter p0

    .line 14
    :try_start_2
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 15
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 16
    :pswitch_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 17
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_3

    .line 18
    monitor-enter p0

    .line 19
    :try_start_3
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 20
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    return v0

    .line 21
    :pswitch_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 22
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_4

    .line 23
    monitor-enter p0

    .line 24
    :try_start_4
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 25
    monitor-exit p0

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_4
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 26
    :pswitch_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 27
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_5

    .line 28
    monitor-enter p0

    .line 29
    :try_start_5
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 30
    monitor-exit p0

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_5
    const/4 v0, 0x0

    :goto_5
    return v0

    .line 31
    :pswitch_6
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 32
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_6

    .line 33
    monitor-enter p0

    .line 34
    :try_start_6
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 35
    monitor-exit p0

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_6
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 36
    :pswitch_7
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 37
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_7

    .line 38
    monitor-enter p0

    .line 39
    :try_start_7
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 40
    monitor-exit p0

    goto :goto_7

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw p1

    :cond_7
    const/4 v0, 0x0

    :goto_7
    return v0

    .line 41
    :pswitch_8
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 42
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_8

    .line 43
    monitor-enter p0

    .line 44
    :try_start_8
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 45
    monitor-exit p0

    goto :goto_8

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw p1

    :cond_8
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 46
    :pswitch_9
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    .line 47
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->_all:I

    if-ne p3, p1, :cond_9

    .line 48
    monitor-enter p0

    .line 49
    :try_start_9
    iget-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 50
    monitor-exit p0

    goto :goto_9

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw p1

    :cond_9
    const/4 v0, 0x0

    :goto_9
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/combateafraude/faceauthenticator/BR;->viewModel:I

    if-ne v0, p1, :cond_0

    .line 2
    check-cast p2, Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    invoke-virtual {p0, p2}, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->setViewModel(Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setViewModel(Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;)V
    .locals 4
    .param p1    # Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBinding;->mViewModel:Lcom/combateafraude/faceauthenticator/controller/viewmodel/SDKViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/combateafraude/faceauthenticator/databinding/ActivityFaceAuthenticatorBindingImpl;->M:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget p1, Lcom/combateafraude/faceauthenticator/BR;->viewModel:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
