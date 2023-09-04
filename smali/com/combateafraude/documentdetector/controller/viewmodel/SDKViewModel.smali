.class public Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SDKViewModel.java"


# instance fields
.field public buttonVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cameraVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public captureModeStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/combateafraude/documentdetector/input/CaptureMode;",
            ">;"
        }
    .end annotation
.end field

.field public closeButton:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public currentStepDone:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public currentStepName:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public currentStepTip:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public loadingStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public manualCaptureButtonVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public maskLayout:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public maskStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/combateafraude/documentdetector/controller/utils/Mask;",
            ">;"
        }
    .end annotation
.end field

.field public maskVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public popUpVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public previewBitMap:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public previewVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public previousStepDone:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public previousStepName:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public readyToCaptureStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public serverRequesting:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public statusMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public statusVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public stepDoneSuccessfullyStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public switchButtonVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public switchCamera:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public switchCameraButtonVisibility:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public takePhotoButton:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public validationFailureId:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;",
            ">;"
        }
    .end annotation
.end field

.field public validationFailureStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;ILjava/lang/String;Z)V
    .locals 2
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepTip:Landroidx/lifecycle/MutableLiveData;

    .line 3
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

    .line 4
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previousStepDone:Landroidx/lifecycle/MutableLiveData;

    .line 5
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->maskLayout:Landroidx/lifecycle/MutableLiveData;

    .line 6
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->statusMessage:Landroidx/lifecycle/MutableLiveData;

    .line 7
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->statusVisibility:Landroidx/lifecycle/MutableLiveData;

    .line 8
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->buttonVisibility:Landroidx/lifecycle/MutableLiveData;

    .line 9
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->serverRequesting:Landroidx/lifecycle/MutableLiveData;

    .line 10
    new-instance p1, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    invoke-direct {p1}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->closeButton:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    .line 11
    new-instance p1, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    invoke-direct {p1}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->takePhotoButton:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    .line 12
    new-instance p1, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    invoke-direct {p1}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->switchCamera:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    .line 13
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->switchButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    .line 14
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previewBitMap:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previewVisibility:Landroidx/lifecycle/MutableLiveData;

    .line 16
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->cameraVisibility:Landroidx/lifecycle/MutableLiveData;

    .line 17
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->maskVisibility:Landroidx/lifecycle/MutableLiveData;

    .line 18
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepName:Landroidx/lifecycle/MutableLiveData;

    .line 19
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previousStepName:Landroidx/lifecycle/MutableLiveData;

    .line 20
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->maskStatus:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->loadingStatus:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->readyToCaptureStatus:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->stepDoneSuccessfullyStatus:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->validationFailureStatus:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->validationFailureId:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->popUpVisibility:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->captureModeStatus:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->switchCameraButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->manualCaptureButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->closeButton:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->call()V

    return-void
.end method

.method public finishPost()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->serverRequesting:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public finishStep()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public resetStep()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepTip:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previousStepDone:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previousStepName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public restartStep()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->buttonVisibility:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setCameraVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->cameraVisibility:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setCaptureModeStatus(Lcom/combateafraude/documentdetector/input/CaptureMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->captureModeStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableSwitchCamera(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->switchButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setLoadingStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->loadingStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setManualCaptureButtonVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->manualCaptureButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMask(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->maskLayout:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMaskStatus(Lcom/combateafraude/documentdetector/controller/utils/Mask;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->maskStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setMaskVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->maskVisibility:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setPopUpVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->popUpVisibility:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setPreviewBitMap(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previewBitMap:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setPreviewVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previewVisibility:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setReadyToCaptureStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->readyToCaptureStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->statusMessage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->statusVisibility:Landroidx/lifecycle/MutableLiveData;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setStepDoneSuccessfullyStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->stepDoneSuccessfullyStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setSwitchCameraButtonVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->switchCameraButtonVisibility:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setValidationFailureId(Lcom/combateafraude/documentdetector/controller/viewmodel/ValidationFailure;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->validationFailureId:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setValidationFailureStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->validationFailureStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public startPost()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->serverRequesting:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public startStep(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previousStepName:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->previousStepDone:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepName:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->currentStepDone:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public switchCamera()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->switchCamera:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->call()V

    return-void
.end method

.method public takePhoto()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/combateafraude/documentdetector/controller/viewmodel/SDKViewModel;->takePhotoButton:Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;

    invoke-virtual {v0}, Lcom/combateafraude/documentdetector/controller/utils/SingleLiveEvent;->call()V

    return-void
.end method
