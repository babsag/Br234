.class public Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;
.super Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;
.source "PopUpMessageBindingImpl.java"

# interfaces
.implements Lcom/combateafraude/documentdetector/generated/callback/OnClickListener$Listener;


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

.field private final B:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final C:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->z:Landroid/util/SparseIntArray;

    .line 2
    sget v1, Lcom/combateafraude/documentdetector/R$id;->guidelineTop:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3
    sget v1, Lcom/combateafraude/documentdetector/R$id;->guidelineLoading:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4
    sget v1, Lcom/combateafraude/documentdetector/R$id;->guideline:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 5
    sget v1, Lcom/combateafraude/documentdetector/R$id;->guideline2:I

    const/16 v2, 0xa

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
    sget-object v0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->z:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v14, p0

    const/4 v0, 0x6

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/constraintlayout/widget/Guideline;

    const/4 v15, 0x2

    aget-object v0, p3, v15

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    const/4 v13, 0x1

    aget-object v0, p3, v13

    move-object v11, v0

    check-cast v11, Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/16 v3, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    .line 4
    iget-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->bCancelPopUp:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->bOkPopUp:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 7
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->pbLoadingPopUp:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->tvSubTittlePopUp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->tvTittlePopUp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 12
    invoke-virtual {v14, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 13
    new-instance v0, Lcom/combateafraude/documentdetector/generated/callback/OnClickListener;

    invoke-direct {v0, v14, v15}, Lcom/combateafraude/documentdetector/generated/callback/OnClickListener;-><init>(Lcom/combateafraude/documentdetector/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->B:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lcom/combateafraude/documentdetector/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v14, v1}, Lcom/combateafraude/documentdetector/generated/callback/OnClickListener;-><init>(Lcom/combateafraude/documentdetector/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v14, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->C:Landroid/view/View$OnClickListener;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->mViewModel:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->close()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->mViewModel:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->tryAgain()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 38

    move-object/from16 v1, p0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v4, 0x0

    .line 3
    iput-wide v4, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->mViewModel:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    const-wide/16 v6, 0x7ff

    and-long/2addr v6, v2

    const-wide/16 v10, 0x620

    const-wide/16 v14, 0x610

    const-wide/16 v16, 0x608

    const-wide/16 v18, 0x604

    const-wide/16 v20, 0x602

    const-wide/16 v22, 0x640

    const-wide/16 v24, 0x601

    const/4 v8, 0x0

    cmp-long v26, v6, v4

    if-eqz v26, :cond_2a

    and-long v6, v2, v24

    cmp-long v26, v6, v4

    if-eqz v26, :cond_1

    if-eqz v0, :cond_0

    .line 6
    iget-object v6, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->okButtonPopUpMessage:Landroidx/lifecycle/MutableLiveData;

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

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v26, v2, v20

    cmp-long v7, v26, v4

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    .line 9
    iget-object v7, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->tittlePopUpMessage:Landroidx/lifecycle/MutableLiveData;

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x1

    .line 10
    invoke-virtual {v1, v8, v7}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v7, :cond_3

    .line 11
    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-long v27, v2, v18

    cmp-long v29, v27, v4

    if-eqz v29, :cond_9

    if-eqz v0, :cond_4

    .line 12
    iget-object v9, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->showResultIcon:Landroidx/lifecycle/MutableLiveData;

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const/4 v8, 0x2

    .line 13
    invoke-virtual {v1, v8, v9}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v9, :cond_5

    .line 14
    invoke-virtual {v9}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 15
    :goto_5
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v29, :cond_7

    if-eqz v8, :cond_6

    const-wide/32 v29, 0x40000

    goto :goto_6

    :cond_6
    const-wide/32 v29, 0x20000

    :goto_6
    or-long v2, v2, v29

    :cond_7
    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    const/16 v8, 0x8

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v8, 0x0

    :goto_8
    and-long v29, v2, v16

    cmp-long v9, v29, v4

    if-eqz v9, :cond_f

    if-eqz v0, :cond_a

    .line 16
    iget-object v12, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->resultSuccess:Landroidx/lifecycle/MutableLiveData;

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    :goto_9
    const/4 v13, 0x3

    .line 17
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_b

    .line 18
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_a

    :cond_b
    const/4 v12, 0x0

    .line 19
    :goto_a
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    if-eqz v9, :cond_d

    if-eqz v12, :cond_c

    const-wide/32 v31, 0x10000

    goto :goto_b

    :cond_c
    const-wide/32 v31, 0x8000

    :goto_b
    or-long v2, v2, v31

    :cond_d
    if-eqz v12, :cond_e

    .line 20
    iget-object v9, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v12, Lcom/combateafraude/documentdetector/R$drawable;->ic_success_icon:I

    goto :goto_c

    :cond_e
    iget-object v9, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v12, Lcom/combateafraude/documentdetector/R$drawable;->ic_failure_icon:I

    :goto_c
    invoke-static {v9, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_d

    :cond_f
    const/4 v9, 0x0

    :goto_d
    and-long v12, v2, v14

    cmp-long v31, v12, v4

    if-eqz v31, :cond_15

    if-eqz v0, :cond_10

    .line 21
    iget-object v12, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->serverRequesting:Landroidx/lifecycle/MutableLiveData;

    goto :goto_e

    :cond_10
    const/4 v12, 0x0

    :goto_e
    const/4 v13, 0x4

    .line 22
    invoke-virtual {v1, v13, v12}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_11

    .line 23
    invoke-virtual {v12}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    goto :goto_f

    :cond_11
    const/4 v12, 0x0

    .line 24
    :goto_f
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    if-eqz v31, :cond_13

    if-eqz v12, :cond_12

    const-wide/16 v31, 0x4000

    goto :goto_10

    :cond_12
    const-wide/16 v31, 0x2000

    :goto_10
    or-long v2, v2, v31

    :cond_13
    if-eqz v12, :cond_14

    goto :goto_11

    :cond_14
    const/16 v12, 0x8

    goto :goto_12

    :cond_15
    :goto_11
    const/4 v12, 0x0

    :goto_12
    and-long v31, v2, v10

    cmp-long v13, v31, v4

    if-eqz v13, :cond_1b

    if-eqz v0, :cond_16

    .line 25
    iget-object v10, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->subTittlePopUpVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_13

    :cond_16
    const/4 v10, 0x0

    :goto_13
    const/4 v11, 0x5

    .line 26
    invoke-virtual {v1, v11, v10}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_17

    .line 27
    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_14

    :cond_17
    const/4 v10, 0x0

    .line 28
    :goto_14
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    if-eqz v13, :cond_19

    if-eqz v10, :cond_18

    const-wide/32 v33, 0x100000

    goto :goto_15

    :cond_18
    const-wide/32 v33, 0x80000

    :goto_15
    or-long v2, v2, v33

    :cond_19
    if-eqz v10, :cond_1a

    goto :goto_16

    :cond_1a
    const/16 v10, 0x8

    goto :goto_17

    :cond_1b
    :goto_16
    const/4 v10, 0x0

    :goto_17
    and-long v33, v2, v22

    cmp-long v11, v33, v4

    if-eqz v11, :cond_21

    if-eqz v0, :cond_1c

    .line 29
    iget-object v13, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->okButtonPopUpVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_18

    :cond_1c
    const/4 v13, 0x0

    :goto_18
    const/4 v14, 0x6

    .line 30
    invoke-virtual {v1, v14, v13}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v13, :cond_1d

    .line 31
    invoke-virtual {v13}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    goto :goto_19

    :cond_1d
    const/4 v13, 0x0

    .line 32
    :goto_19
    invoke-static {v13}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v13

    if-eqz v11, :cond_1f

    if-eqz v13, :cond_1e

    const-wide/16 v14, 0x1000

    goto :goto_1a

    :cond_1e
    const-wide/16 v14, 0x800

    :goto_1a
    or-long/2addr v2, v14

    :cond_1f
    if-eqz v13, :cond_20

    goto :goto_1b

    :cond_20
    const/16 v11, 0x8

    goto :goto_1c

    :cond_21
    :goto_1b
    const/4 v11, 0x0

    :goto_1c
    const-wide/16 v13, 0x680

    and-long v35, v2, v13

    cmp-long v13, v35, v4

    if-eqz v13, :cond_27

    if-eqz v0, :cond_22

    .line 33
    iget-object v14, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->messagePopUpVisibility:Landroidx/lifecycle/MutableLiveData;

    goto :goto_1d

    :cond_22
    const/4 v14, 0x0

    :goto_1d
    const/4 v15, 0x7

    .line 34
    invoke-virtual {v1, v15, v14}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_23

    .line 35
    invoke-virtual {v14}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_1e

    :cond_23
    const/4 v14, 0x0

    .line 36
    :goto_1e
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v14

    if-eqz v13, :cond_25

    if-eqz v14, :cond_24

    const-wide/32 v35, 0x400000

    goto :goto_1f

    :cond_24
    const-wide/32 v35, 0x200000

    :goto_1f
    or-long v2, v2, v35

    :cond_25
    if-eqz v14, :cond_26

    const/16 v26, 0x0

    goto :goto_20

    :cond_26
    const/16 v26, 0x8

    :goto_20
    const-wide/16 v13, 0x700

    goto :goto_21

    :cond_27
    const-wide/16 v13, 0x700

    const/16 v26, 0x0

    :goto_21
    and-long v35, v2, v13

    cmp-long v13, v35, v4

    if-eqz v13, :cond_29

    if-eqz v0, :cond_28

    .line 37
    iget-object v0, v0, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;->subTittlePopUpMessage:Landroidx/lifecycle/MutableLiveData;

    goto :goto_22

    :cond_28
    const/4 v0, 0x0

    :goto_22
    const/16 v13, 0x8

    .line 38
    invoke-virtual {v1, v13, v0}, Landroidx/databinding/ViewDataBinding;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_29

    .line 39
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v13, v7

    move-object v7, v9

    move-object v9, v6

    move/from16 v6, v26

    move/from16 v37, v11

    move-object v11, v0

    move v0, v8

    move/from16 v8, v37

    goto :goto_23

    :cond_29
    move-object v13, v7

    move v0, v8

    move-object v7, v9

    move v8, v11

    const/4 v11, 0x0

    move-object v9, v6

    move/from16 v6, v26

    goto :goto_23

    :cond_2a
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_23
    const-wide/16 v14, 0x400

    and-long/2addr v14, v2

    cmp-long v26, v14, v4

    if-eqz v26, :cond_2b

    .line 40
    iget-object v14, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->bCancelPopUp:Landroid/widget/TextView;

    iget-object v15, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v14, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->bOkPopUp:Lcom/google/android/material/button/MaterialButton;

    iget-object v15, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    and-long v14, v2, v22

    cmp-long v22, v14, v4

    if-eqz v22, :cond_2c

    .line 42
    iget-object v14, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->bCancelPopUp:Landroid/widget/TextView;

    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v14, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->bOkPopUp:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2c
    and-long v14, v2, v24

    cmp-long v8, v14, v4

    if-eqz v8, :cond_2d

    .line 44
    iget-object v8, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->bOkPopUp:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v8, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2d
    and-long v8, v2, v16

    cmp-long v14, v8, v4

    if-eqz v14, :cond_2e

    .line 45
    iget-object v8, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->imageView:Landroid/widget/ImageView;

    invoke-static {v8, v7}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    and-long v7, v2, v18

    cmp-long v9, v7, v4

    if-eqz v9, :cond_2f

    .line 46
    iget-object v7, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2f
    const-wide/16 v7, 0x680

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_30

    .line 47
    iget-object v0, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->A:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_30
    const-wide/16 v6, 0x610

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_31

    .line 48
    iget-object v0, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->pbLoadingPopUp:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_31
    const-wide/16 v6, 0x700

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_32

    .line 49
    iget-object v0, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->tvSubTittlePopUp:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_32
    const-wide/16 v6, 0x620

    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_33

    .line 50
    iget-object v0, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->tvSubTittlePopUp:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_33
    and-long v2, v2, v20

    cmp-long v0, v2, v4

    if-eqz v0, :cond_34

    .line 51
    iget-object v0, v1, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->tvTittlePopUp:Landroid/widget/TextView;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_34
    return-void

    :catchall_0
    move-exception v0

    .line 52
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
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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

    const-wide/16 v0, 0x400

    .line 2
    :try_start_0
    iput-wide v0, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x100

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_1

    .line 8
    monitor-enter p0

    .line 9
    :try_start_1
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x80

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_2

    .line 13
    monitor-enter p0

    .line 14
    :try_start_2
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x40

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_3

    .line 18
    monitor-enter p0

    .line 19
    :try_start_3
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x20

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_4

    .line 23
    monitor-enter p0

    .line 24
    :try_start_4
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x10

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_5

    .line 28
    monitor-enter p0

    .line 29
    :try_start_5
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x8

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_6

    .line 33
    monitor-enter p0

    .line 34
    :try_start_6
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x4

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_7

    .line 38
    monitor-enter p0

    .line 39
    :try_start_7
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x2

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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
    sget p1, Lcom/combateafraude/documentdetector/BR;->_all:I

    if-ne p3, p1, :cond_8

    .line 43
    monitor-enter p0

    .line 44
    :try_start_8
    iget-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v1, 0x1

    or-long/2addr p1, v1

    iput-wide p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    sget v0, Lcom/combateafraude/documentdetector/BR;->viewModel:I

    if-ne v0, p1, :cond_0

    .line 2
    check-cast p2, Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    invoke-virtual {p0, p2}, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->setViewModel(Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setViewModel(Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;)V
    .locals 4
    .param p1    # Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBinding;->mViewModel:Lcom/combateafraude/documentdetector/controller/viewmodel/UploadSDKViewModel;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/combateafraude/documentdetector/databinding/PopUpMessageBindingImpl;->D:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget p1, Lcom/combateafraude/documentdetector/BR;->viewModel:I

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
