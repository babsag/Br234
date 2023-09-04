.class final Lcom/google/mlkit/vision/text/internal/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Lcom/google/mlkit/vision/text/internal/e;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

.field private c:Z

.field private d:Z

.field private final e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

.field private f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    iput-object p3, p0, Lcom/google/mlkit/vision/text/internal/b;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/b;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/internal/b;->zzb()V

    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/b;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    iget-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/b;->c:Z

    const/16 v2, 0xd

    if-nez v1, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->zze()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/b;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 5
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to init text recognizer "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_1
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 8
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getFormat()I

    move-result v4

    .line 9
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getWidth()I

    move-result v5

    .line 10
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getHeight()I

    move-result v6

    .line 11
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getRotationDegrees()I

    move-result v3

    invoke-static {v3}, Lcom/google/mlkit/vision/common/internal/CommonConvertUtils;->convertToMVRotation(I)I

    move-result v7

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;-><init>(IIIIJ)V

    .line 13
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getImageDataWrapper(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 14
    :try_start_1
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpg;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/vision/text/Text;

    .line 15
    invoke-virtual {p1}, Lcom/google/mlkit/vision/common/InputImage;->getCoordinatesMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/mlkit/vision/text/Text;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzpg;Landroid/graphics/Matrix;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 16
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to run text recognizer "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2, p1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method public final zzb()V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/b;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    if-nez v0, :cond_3

    const/16 v0, 0xd

    :try_start_0
    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 5
    invoke-interface {v3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getModuleId()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 7
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getCreatorClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoy;->zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/b;->a:Landroid/content/Context;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoz;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/mlkit/vision/text/internal/b;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/b;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 10
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    .line 11
    invoke-static {v1, v2, v3}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)V
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/b;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 13
    invoke-interface {v3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;->zzC:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    .line 14
    invoke-static {v2, v3, v4}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)V

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 15
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Lcom/google/mlkit/common/MlKitException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Failed to create text recognizer "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v1

    .line 17
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/b;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 18
    invoke-interface {v3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;->zzB:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    .line 19
    invoke-static {v2, v3, v4}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)V

    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 20
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 21
    iget-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/b;->d:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/b;->a:Landroid/content/Context;

    const-string v1, "ocr"

    .line 23
    invoke-static {v0, v1}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->requestDownload(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/mlkit/vision/text/internal/b;->d:Z

    .line 24
    :goto_1
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    const/16 v1, 0xe

    const-string v2, "Waiting for the text optional module to be downloaded. Please wait."

    invoke-direct {v0, v2, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 25
    :cond_2
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 26
    invoke-interface {v6}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "Failed to load text module %s. %s"

    .line 27
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    :cond_3
    return-void
.end method

.method public final zzc()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/b;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/b;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 2
    invoke-interface {v1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to release text recognizer "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecoupledTextDelegate"

    .line 3
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/mlkit/vision/text/internal/b;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzow;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/b;->c:Z

    return-void
.end method
