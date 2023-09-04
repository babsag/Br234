.class public final Lcom/google/mlkit/vision/text/internal/zzm;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# instance fields
.field private final b:Lcom/google/mlkit/common/sdkinternal/MlKitContext;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/MlKitContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzm;->b:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 2
    invoke-interface {p1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzor;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzm;->b:Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 4
    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->e(Landroid/content/Context;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;)Lcom/google/mlkit/vision/text/internal/e;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;Lcom/google/mlkit/vision/text/internal/e;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V

    return-object v1
.end method
