.class public Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;
.super Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;
.source "ActivityPassiveFaceLivenessBindingImpl.java"

# interfaces
.implements Lcaf/io/G$a;


# static fields
.field private static final A:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final z:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final B:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final C:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final D:Landroid/widget/ImageView;
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

.field private final G:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final H:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final I:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final J:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
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

.field private final M:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private N:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->A:Landroid/util/SparseIntArray;

    .line 2
    sget v1, Lcom/combateafraude/passivefaceliveness/R$id;->guidelineStart:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget v1, Lcom/combateafraude/passivefaceliveness/R$id;->guidelineEnd:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget v1, Lcom/combateafraude/passivefaceliveness/R$id;->guidelineTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget v1, Lcom/combateafraude/passivefaceliveness/R$id;->guidelineStatus:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 6
    sget v1, Lcom/combateafraude/passivefaceliveness/R$id;->guidelineBottom:I

    const/16 v2, 0x12

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
    sget-object v0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->z:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->A:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v14, p0

    const/4 v15, 0x1

    .line 2
    aget-object v0, p3, v15

    move-object v4, v0

    check-cast v4, Landroidx/camera/view/PreviewView;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/16 v3, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v13}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/camera/view/PreviewView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 4
    iget-object v0, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->cameraImageView:Landroidx/camera/view/PreviewView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->B:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xa

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->C:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xc

    .line 9
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->D:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 11
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->E:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 13
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->F:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 15
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->G:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x5

    .line 17
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->H:Landroid/widget/ImageView;

    .line 18
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x6

    .line 19
    aget-object v3, p3, v3

    check-cast v3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->I:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 20
    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x7

    .line 21
    aget-object v3, p3, v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 22
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 23
    iget-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->statusMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 25
    iget-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->tvCurrentStepName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 26
    iget-object v3, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->tvPreviousStepName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 27
    invoke-virtual {v14, v1}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 28
    new-instance v1, Lcaf/io/G;

    invoke-direct {v1, v14, v0}, Lcaf/io/G;-><init>(Lcaf/io/G$a;I)V

    iput-object v1, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->K:Landroid/view/View$OnClickListener;

    .line 29
    new-instance v0, Lcaf/io/G;

    invoke-direct {v0, v14, v15}, Lcaf/io/G;-><init>(Lcaf/io/G$a;I)V

    iput-object v0, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->L:Landroid/view/View$OnClickListener;

    .line 30
    new-instance v0, Lcaf/io/G;

    invoke-direct {v0, v14, v2}, Lcaf/io/G;-><init>(Lcaf/io/G$a;I)V

    iput-object v0, v14, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->M:Landroid/view/View$OnClickListener;

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->invalidateAll()V

    return-void
.end method

.method private A(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private B(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x2000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private C(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x100

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private D(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private q(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private r(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x10

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private s(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private t(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private u(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private v(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x200

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private w(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private x(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x80

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private y(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x400

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private z(Landroidx/lifecycle/MutableLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
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
    iget-object p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->mViewModel:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->takePhoto()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->mViewModel:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->switchCamera()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->mViewModel:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    :cond_5
    if-eqz p2, :cond_6

    .line 6
    invoke-virtual {p1}, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->close()V

    :cond_6
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 53

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->mViewModel:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    const-wide/32 v6, 0xffff

    and-long/2addr v6, v2

    const-wide/32 v14, 0xc020

    const-wide/32 v16, 0xc200

    const-wide/32 v18, 0xc400

    const-wide/32 v20, 0xc008

    const-wide/32 v22, 0xc080

    const-wide/32 v24, 0xc004

    const-wide/32 v26, 0xd000

    const-wide/32 v28, 0xc002

    const-wide/32 v30, 0xc040

    const-wide/32 v32, 0xc001

    const-wide/32 v34, 0xc010

    const/4 v8, 0x0

    cmp-long v36, v6, v4

    if-eqz v36, :cond_41

    and-long v6, v2, v32

    cmp-long v37, v6, v4

    if-eqz v37, :cond_5

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->buttonVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1, v8, v6}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

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

    if-eqz v37, :cond_3

    if-eqz v6, :cond_2

    const-wide/32 v37, 0x800000

    goto :goto_2

    :cond_2
    const-wide/32 v37, 0x400000

    :goto_2
    or-long v2, v2, v37

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
    and-long v37, v2, v28

    cmp-long v7, v37, v4

    if-eqz v7, :cond_b

    if-eqz v0, :cond_6

    .line 10
    iget-object v8, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->maskVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_5
    const/4 v10, 0x1

    .line 11
    invoke-virtual {v1, v10, v8}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v8, :cond_7

    .line 12
    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    .line 13
    :goto_6
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v7, :cond_9

    if-eqz v8, :cond_8

    const-wide v10, 0x80000000L

    goto :goto_7

    :cond_8
    const-wide/32 v10, 0x40000000

    :goto_7
    or-long/2addr v2, v10

    :cond_9
    if-eqz v8, :cond_a

    goto :goto_8

    :cond_a
    const/16 v7, 0x8

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v7, 0x0

    :goto_9
    and-long v10, v2, v24

    cmp-long v8, v10, v4

    if-eqz v8, :cond_11

    if-eqz v0, :cond_c

    .line 14
    iget-object v10, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->loadingStatus:Landroidx/lifecycle/MutableLiveData;

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

    if-eqz v8, :cond_f

    if-eqz v10, :cond_e

    const-wide/32 v40, 0x80000

    goto :goto_c

    :cond_e
    const-wide/32 v40, 0x40000

    :goto_c
    or-long v2, v2, v40

    :cond_f
    if-eqz v10, :cond_10

    goto :goto_d

    :cond_10
    const/16 v8, 0x8

    goto :goto_e

    :cond_11
    :goto_d
    const/4 v8, 0x0

    :goto_e
    and-long v10, v2, v20

    cmp-long v40, v10, v4

    if-eqz v40, :cond_17

    if-eqz v0, :cond_12

    .line 18
    iget-object v10, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->switchButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_f

    :cond_12
    const/4 v10, 0x0

    :goto_f
    const/4 v11, 0x3

    .line 19
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_13

    .line 20
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_10

    :cond_13
    const/4 v10, 0x0

    .line 21
    :goto_10
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v40, :cond_15

    if-eqz v10, :cond_14

    const-wide/32 v40, 0x200000

    goto :goto_11

    :cond_14
    const-wide/32 v40, 0x100000

    :goto_11
    or-long v2, v2, v40

    :cond_15
    if-eqz v10, :cond_16

    goto :goto_12

    :cond_16
    const/16 v10, 0x8

    goto :goto_13

    :cond_17
    :goto_12
    const/4 v10, 0x0

    :goto_13
    and-long v40, v2, v34

    cmp-long v11, v40, v4

    if-eqz v11, :cond_1d

    if-eqz v0, :cond_18

    .line 22
    iget-object v9, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->cameraVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_14

    :cond_18
    const/4 v9, 0x0

    :goto_14
    const/4 v12, 0x4

    .line 23
    invoke-virtual {v1, v12, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_19

    .line 24
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    goto :goto_15

    :cond_19
    const/4 v9, 0x0

    .line 25
    :goto_15
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v11, :cond_1b

    if-eqz v9, :cond_1a

    const-wide/32 v11, 0x20000

    goto :goto_16

    :cond_1a
    const-wide/32 v11, 0x10000

    :goto_16
    or-long/2addr v2, v11

    :cond_1b
    if-eqz v9, :cond_1c

    goto :goto_17

    :cond_1c
    const/16 v9, 0x8

    goto :goto_18

    :cond_1d
    :goto_17
    const/4 v9, 0x0

    :goto_18
    and-long v11, v2, v14

    cmp-long v13, v11, v4

    if-eqz v13, :cond_1f

    if-eqz v0, :cond_1e

    .line 26
    iget-object v11, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->currentStepName:Landroidx/lifecycle/MutableLiveData;

    goto :goto_19

    :cond_1e
    const/4 v11, 0x0

    :goto_19
    const/4 v12, 0x5

    .line 27
    invoke-virtual {v1, v12, v11}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v11, :cond_1f

    .line 28
    invoke-virtual {v11}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    goto :goto_1a

    :cond_1f
    const/4 v11, 0x0

    :goto_1a
    and-long v12, v2, v30

    cmp-long v42, v12, v4

    if-eqz v42, :cond_25

    if-eqz v0, :cond_20

    .line 29
    iget-object v12, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

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

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_1c

    :cond_21
    const/4 v12, 0x0

    .line 32
    :goto_1c
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    if-eqz v42, :cond_23

    if-eqz v12, :cond_22

    const-wide/32 v42, 0x2000000

    goto :goto_1d

    :cond_22
    const-wide/32 v42, 0x1000000

    :goto_1d
    or-long v2, v2, v42

    :cond_23
    if-eqz v12, :cond_24

    goto :goto_1e

    :cond_24
    const/16 v12, 0x8

    goto :goto_1f

    :cond_25
    :goto_1e
    const/4 v12, 0x0

    :goto_1f
    and-long v42, v2, v22

    cmp-long v13, v42, v4

    if-eqz v13, :cond_27

    if-eqz v0, :cond_26

    .line 33
    iget-object v13, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->previewBitMap:Landroidx/lifecycle/MutableLiveData;

    goto :goto_20

    :cond_26
    const/4 v13, 0x0

    :goto_20
    const/4 v14, 0x7

    .line 34
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_27

    .line 35
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/Drawable;

    goto :goto_21

    :cond_27
    const/4 v13, 0x0

    :goto_21
    const-wide/32 v14, 0xc100

    and-long v44, v2, v14

    cmp-long v14, v44, v4

    if-eqz v14, :cond_2d

    if-eqz v0, :cond_28

    .line 36
    iget-object v15, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->statusVisibility:Landroidx/lifecycle/MutableLiveData;

    const/16 v4, 0x8

    goto :goto_22

    :cond_28
    const/16 v4, 0x8

    const/4 v15, 0x0

    .line 37
    :goto_22
    invoke-virtual {v1, v4, v15}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_29

    .line 38
    invoke-virtual {v15}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_23

    :cond_29
    const/4 v5, 0x0

    .line 39
    :goto_23
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v14, :cond_2b

    if-eqz v5, :cond_2a

    const-wide v14, 0x200000000L

    goto :goto_24

    :cond_2a
    const-wide v14, 0x100000000L

    :goto_24
    or-long/2addr v2, v14

    :cond_2b
    if-eqz v5, :cond_2c

    goto :goto_25

    :cond_2c
    const/16 v5, 0x8

    goto :goto_26

    :cond_2d
    const/16 v4, 0x8

    :goto_25
    const/4 v5, 0x0

    :goto_26
    and-long v14, v2, v16

    const-wide/16 v44, 0x0

    cmp-long v40, v14, v44

    if-eqz v40, :cond_30

    if-eqz v0, :cond_2e

    .line 40
    iget-object v14, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->maskLayout:Landroidx/lifecycle/MutableLiveData;

    goto :goto_27

    :cond_2e
    const/4 v14, 0x0

    :goto_27
    const/16 v15, 0x9

    .line 41
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_2f

    .line 42
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    goto :goto_28

    :cond_2f
    const/4 v14, 0x0

    .line 43
    :goto_28
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v14

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto :goto_29

    :cond_30
    const/4 v14, 0x0

    :goto_29
    and-long v46, v2, v18

    const-wide/16 v44, 0x0

    cmp-long v15, v46, v44

    if-eqz v15, :cond_36

    if-eqz v0, :cond_31

    .line 45
    iget-object v4, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->previewVisibility:Landroidx/lifecycle/MutableLiveData;

    move/from16 v46, v5

    goto :goto_2a

    :cond_31
    move/from16 v46, v5

    const/4 v4, 0x0

    :goto_2a
    const/16 v5, 0xa

    .line 46
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_32

    .line 47
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_2b

    :cond_32
    const/4 v4, 0x0

    .line 48
    :goto_2b
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v15, :cond_34

    if-eqz v4, :cond_33

    const-wide/32 v47, 0x20000000

    goto :goto_2c

    :cond_33
    const-wide/32 v47, 0x10000000

    :goto_2c
    or-long v2, v2, v47

    :cond_34
    if-eqz v4, :cond_35

    goto :goto_2d

    :cond_35
    const/16 v4, 0x8

    goto :goto_2e

    :cond_36
    move/from16 v46, v5

    :goto_2d
    const/4 v4, 0x0

    :goto_2e
    const-wide/32 v38, 0xc800

    and-long v47, v2, v38

    const-wide/16 v44, 0x0

    cmp-long v5, v47, v44

    if-eqz v5, :cond_38

    if-eqz v0, :cond_37

    .line 49
    iget-object v5, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->previousStepName:Landroidx/lifecycle/MutableLiveData;

    goto :goto_2f

    :cond_37
    const/4 v5, 0x0

    :goto_2f
    const/16 v15, 0xb

    .line 50
    invoke-virtual {v1, v15, v5}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v5, :cond_38

    .line 51
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_30

    :cond_38
    const/4 v5, 0x0

    :goto_30
    and-long v47, v2, v26

    const-wide/16 v44, 0x0

    cmp-long v15, v47, v44

    move/from16 v47, v4

    if-eqz v15, :cond_3e

    if-eqz v0, :cond_39

    .line 52
    iget-object v4, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->previousStepDone:Landroidx/lifecycle/MutableLiveData;

    move-object/from16 v48, v5

    goto :goto_31

    :cond_39
    move-object/from16 v48, v5

    const/4 v4, 0x0

    :goto_31
    const/16 v5, 0xc

    .line 53
    invoke-virtual {v1, v5, v4}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v4, :cond_3a

    .line 54
    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    goto :goto_32

    :cond_3a
    const/4 v4, 0x0

    .line 55
    :goto_32
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v15, :cond_3c

    if-eqz v4, :cond_3b

    const-wide/32 v49, 0x8000000

    goto :goto_33

    :cond_3b
    const-wide/32 v49, 0x4000000

    :goto_33
    or-long v2, v2, v49

    :cond_3c
    if-eqz v4, :cond_3d

    const/16 v37, 0x0

    goto :goto_34

    :cond_3d
    const/16 v37, 0x8

    :goto_34
    const-wide/32 v4, 0xe000

    goto :goto_35

    :cond_3e
    move-object/from16 v48, v5

    const-wide/32 v4, 0xe000

    const/16 v37, 0x0

    :goto_35
    and-long v49, v2, v4

    const-wide/16 v4, 0x0

    cmp-long v15, v49, v4

    if-eqz v15, :cond_40

    if-eqz v0, :cond_3f

    .line 56
    iget-object v0, v0, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;->statusMessage:Landroidx/lifecycle/MutableLiveData;

    goto :goto_36

    :cond_3f
    const/4 v0, 0x0

    :goto_36
    const/16 v4, 0xd

    .line 57
    invoke-virtual {v1, v4, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_40

    .line 58
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v15, v11

    move/from16 v5, v46

    move/from16 v4, v47

    move-object/from16 v51, v48

    move-object v11, v0

    move/from16 v0, v37

    goto :goto_37

    :cond_40
    move-object v15, v11

    move/from16 v0, v37

    move/from16 v5, v46

    move/from16 v4, v47

    move-object/from16 v51, v48

    const/4 v11, 0x0

    :goto_37
    move/from16 v52, v9

    move v9, v8

    move/from16 v8, v52

    goto :goto_38

    :cond_41
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v51, 0x0

    :goto_38
    and-long v34, v2, v34

    const-wide/16 v36, 0x0

    cmp-long v40, v34, v36

    move-object/from16 v34, v15

    if-eqz v40, :cond_42

    .line 59
    iget-object v15, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->cameraImageView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v15, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_42
    and-long v30, v2, v30

    cmp-long v8, v30, v36

    if-eqz v8, :cond_43

    .line 60
    iget-object v8, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->C:Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_43
    and-long v26, v2, v26

    cmp-long v8, v26, v36

    if-eqz v8, :cond_44

    .line 61
    iget-object v8, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->D:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_44
    and-long v22, v2, v22

    cmp-long v0, v22, v36

    if-eqz v0, :cond_45

    .line 62
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->E:Landroid/widget/ImageView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_45
    and-long v12, v2, v18

    cmp-long v0, v12, v36

    if-eqz v0, :cond_46

    .line 63
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_46
    and-long v12, v2, v16

    cmp-long v0, v12, v36

    if-eqz v0, :cond_47

    .line 64
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->F:Landroid/widget/ImageView;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_47
    and-long v12, v2, v28

    cmp-long v0, v12, v36

    if-eqz v0, :cond_48

    .line 65
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_48
    const-wide/32 v7, 0x8000

    and-long/2addr v7, v2

    cmp-long v0, v7, v36

    if-eqz v0, :cond_49

    .line 66
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->G:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->H:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->I:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v4, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_49
    and-long v7, v2, v20

    const-wide/16 v12, 0x0

    cmp-long v0, v7, v12

    if-eqz v0, :cond_4a

    .line 69
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4a
    and-long v7, v2, v32

    cmp-long v0, v7, v12

    if-eqz v0, :cond_4b

    .line 70
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->I:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v6}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    :cond_4b
    const-wide/32 v6, 0xc100

    and-long/2addr v6, v2

    cmp-long v0, v6, v12

    if-eqz v0, :cond_4c

    .line 71
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->J:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4c
    and-long v4, v2, v24

    cmp-long v0, v4, v12

    if-eqz v0, :cond_4d

    .line 72
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4d
    const-wide/32 v4, 0xe000

    and-long/2addr v4, v2

    cmp-long v0, v4, v12

    if-eqz v0, :cond_4e

    .line 73
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->statusMessage:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4e
    const-wide/32 v4, 0xc020

    and-long/2addr v4, v2

    cmp-long v0, v4, v12

    if-eqz v0, :cond_4f

    .line 74
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->tvCurrentStepName:Landroid/widget/TextView;

    move-object/from16 v11, v34

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4f
    const-wide/32 v4, 0xc800

    and-long/2addr v2, v4

    cmp-long v0, v2, v12

    if-eqz v0, :cond_50

    .line 75
    iget-object v0, v1, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->tvPreviousStepName:Landroid/widget/TextView;

    move-object/from16 v2, v51

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_50
    return-void

    :catchall_0
    move-exception v0

    .line 76
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
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

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

    const-wide/32 v0, 0x8000

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

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
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->B(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_1
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->z(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 3
    :pswitch_2
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->A(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 4
    :pswitch_3
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->y(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 5
    :pswitch_4
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->v(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 6
    :pswitch_5
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->C(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 7
    :pswitch_6
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->x(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 8
    :pswitch_7
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->s(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 9
    :pswitch_8
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->t(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 10
    :pswitch_9
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->r(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 11
    :pswitch_a
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->D(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 12
    :pswitch_b
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->u(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 13
    :pswitch_c
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->w(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    .line 14
    :pswitch_d
    check-cast p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2, p3}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->q(Landroidx/lifecycle/MutableLiveData;I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 1
    check-cast p2, Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    invoke-virtual {p0, p2}, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->setViewModel(Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setViewModel(Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;)V
    .locals 4
    .param p1    # Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBinding;->mViewModel:Lcom/combateafraude/passivefaceliveness/controller/viewmodel/SDKViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/combateafraude/passivefaceliveness/databinding/ActivityPassiveFaceLivenessBindingImpl;->N:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
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
