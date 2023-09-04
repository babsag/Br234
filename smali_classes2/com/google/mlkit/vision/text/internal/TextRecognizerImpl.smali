.class public Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;
.super Lcom/google/mlkit/vision/common/internal/MobileVisionBase;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/text/TextRecognizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/vision/common/internal/MobileVisionBase<",
        "Lcom/google/mlkit/vision/text/Text;",
        ">;",
        "Lcom/google/mlkit/vision/text/TextRecognizer;"
    }
.end annotation


# instance fields
.field private final g:Z


# direct methods
.method constructor <init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V
    .locals 1
    .param p1    # Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;-><init>(Lcom/google/mlkit/common/sdkinternal/MLTask;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-interface {p4}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;->g:Z

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zze(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;-><init>()V

    .line 4
    invoke-interface {p4}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLanguageOption()I

    move-result p4

    .line 5
    invoke-static {p4}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->a(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    move-result-object p4

    .line 6
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;->zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;

    move-result-object p4

    .line 7
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zze(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zzf()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zzh(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    const/4 p1, 0x1

    .line 9
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoj;->zzg(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;->zzg:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    .line 10
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;)V

    return-void
.end method


# virtual methods
.method public final getDetectorType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final getOptionalFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->EMPTY_FEATURES:[Lcom/google/android/gms/common/Feature;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->FEATURE_OCR:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    :goto_0
    return-object v0
.end method

.method public final process(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .param p1    # Lcom/google/android/odml/image/MlImage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/odml/image/MlImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/mlkit/vision/text/Text;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/android/odml/image/MlImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .param p1    # Lcom/google/mlkit/vision/common/InputImage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/common/InputImage;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/mlkit/vision/text/Text;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/google/mlkit/vision/common/internal/MobileVisionBase;->processBase(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
