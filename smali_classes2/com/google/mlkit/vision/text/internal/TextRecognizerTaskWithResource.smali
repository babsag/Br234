.class public Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;
.super Lcom/google/mlkit/common/sdkinternal/MLTask;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mlkit/common/sdkinternal/MLTask<",
        "Lcom/google/mlkit/vision/text/Text;",
        "Lcom/google/mlkit/vision/common/InputImage;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/mlkit/common/sdkinternal/TaskQueue;
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field static d:Z = true
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final e:Lcom/google/mlkit/vision/common/internal/ImageUtils;


# instance fields
.field private final f:Lcom/google/mlkit/vision/text/internal/e;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

.field private final h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoi;

.field private final i:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getInstance()Lcom/google/mlkit/vision/common/internal/ImageUtils;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->e:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 2
    new-instance v0, Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    invoke-direct {v0}, Lcom/google/mlkit/common/sdkinternal/TaskQueue;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->c:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;Lcom/google/mlkit/vision/text/internal/e;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/mlkit/vision/text/internal/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->c:Lcom/google/mlkit/common/sdkinternal/TaskQueue;

    invoke-direct {p0, v0}, Lcom/google/mlkit/common/sdkinternal/MLTask;-><init>(Lcom/google/mlkit/common/sdkinternal/TaskQueue;)V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->f:Lcom/google/mlkit/vision/text/internal/e;

    .line 2
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoi;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoi;

    iput-object p3, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    return-void
.end method

.method static e(Landroid/content/Context;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;)Lcom/google/mlkit/vision/text/internal/e;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v0

    const v1, 0xc337960

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/mlkit/vision/text/internal/c;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/mlkit/vision/text/internal/c;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/mlkit/vision/text/internal/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/mlkit/vision/text/internal/b;-><init>(Landroid/content/Context;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;)V

    return-object v0
.end method

.method private final f(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;JLcom/google/mlkit/vision/common/InputImage;)V
    .locals 24
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v6, p0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v15, v0, p2

    new-instance v7, Lcom/google/mlkit/vision/text/internal/zzn;

    move-object v0, v7

    move-object/from16 v1, p0

    move-wide v2, v15

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/mlkit/vision/text/internal/zzn;-><init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;JLcom/google/android/gms/internal/mlkit_vision_text_common/zzks;Lcom/google/mlkit/vision/common/InputImage;)V

    iget-object v0, v6, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;->zzf:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoe;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;)V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;-><init>()V

    move-object/from16 v1, p1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;->zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;

    sget-boolean v2, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->d:Z

    .line 4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;

    invoke-direct {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;-><init>()V

    iget-object v3, v6, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 5
    invoke-interface {v3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLanguageOption()I

    move-result v3

    invoke-static {v3}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->a(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;->zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;->zzc(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzec;->zzd()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;

    move-result-object v10

    new-instance v13, Lcom/google/mlkit/vision/text/internal/zzo;

    invoke-direct {v13, v6}, Lcom/google/mlkit/vision/text/internal/zzo;-><init>(Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;)V

    iget-object v8, v6, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->g:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    sget-object v9, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;->zzbi:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    .line 8
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MLTaskExecutor;->workerThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;

    const/4 v14, 0x0

    move-object v7, v2

    move-wide v11, v15

    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;Ljava/lang/Object;JLcom/google/mlkit/vision/text/internal/zzo;[B)V

    .line 9
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    iget-object v0, v6, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoi;

    iget-object v2, v6, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 11
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingEventId()I

    move-result v18

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;->zza()I

    move-result v19

    sub-long v20, v22, v15

    move-object/from16 v17, v0

    .line 13
    invoke-virtual/range {v17 .. v23}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoi;->zzc(IIJJ)V

    return-void
.end method


# virtual methods
.method final synthetic c(JLcom/google/android/gms/internal/mlkit_vision_text_common/zzks;Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;->zzc(Ljava/lang/Long;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;

    .line 2
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;

    sget-boolean p1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->d:Z

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;->zza(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;->zzb(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkj;->zzf()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkl;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;

    sget-object p1, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->e:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 7
    invoke-virtual {p1, p4}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageFormat(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p2

    .line 8
    invoke-virtual {p1, p4}, Lcom/google/mlkit/vision/common/internal/ImageUtils;->getMobileVisionImageSize(Lcom/google/mlkit/vision/common/InputImage;)I

    move-result p1

    new-instance p3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;

    invoke-direct {p3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;-><init>()V

    const/4 p4, -0x1

    if-eq p2, p4, :cond_4

    const/16 p4, 0x23

    if-eq p2, p4, :cond_3

    const p4, 0x32315659

    if-eq p2, p4, :cond_2

    const/16 p4, 0x10

    if-eq p2, p4, :cond_1

    const/16 p4, 0x11

    if-eq p2, p4, :cond_0

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;

    goto :goto_0

    .line 10
    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;

    goto :goto_0

    .line 11
    :cond_1
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;

    goto :goto_0

    .line 12
    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;

    goto :goto_0

    .line 13
    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;->zze:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;

    goto :goto_0

    .line 14
    :cond_4
    sget-object p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;->zzg:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;

    .line 15
    :goto_0
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;->zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkf;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;->zzb(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzke;->zzd()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zzc(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkh;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;-><init>()V

    iget-object p2, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 18
    invoke-interface {p2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getLoggingLanguageOption()I

    move-result p2

    invoke-static {p2}, Lcom/google/mlkit/vision/text/internal/LoggingUtils;->a(I)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;->zza(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmo;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmn;->zzc()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zze(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmq;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmk;->zzf()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;-><init>()V

    iget-object p3, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 21
    invoke-interface {p3}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 22
    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    goto :goto_1

    .line 23
    :cond_5
    sget-object p3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    .line 24
    :goto_1
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zze(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zzh(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzmm;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoj;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;ILcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;-><init>()V

    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->i:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    invoke-interface {v1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->getIsThickClient()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zze(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkr;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;-><init>()V

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;->zzc(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzee;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;

    .line 7
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;->zzb(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkb;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeb;->zze()Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;->zzd(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzeg;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoj;->zzf(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzku;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zznv;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized load()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->f:Lcom/google/mlkit/vision/text/internal/e;

    invoke-interface {v0}, Lcom/google/mlkit/vision/text/internal/e;->zzb()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized release()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    sput-boolean v0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->d:Z

    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->f:Lcom/google/mlkit/vision/text/internal/e;

    invoke-interface {v0}, Lcom/google/mlkit/vision/text/internal/e;->zzc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic run(Lcom/google/mlkit/common/sdkinternal/MLTaskInput;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lcom/google/mlkit/common/sdkinternal/MLTaskInput;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/mlkit/vision/common/InputImage;

    invoke-virtual {p0, p1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->zze(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized zze(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;
    .locals 5
    .param p1    # Lcom/google/mlkit/vision/common/InputImage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mlkit/common/MlKitException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->f:Lcom/google/mlkit/vision/text/internal/e;

    .line 2
    invoke-interface {v2, p1}, Lcom/google/mlkit/vision/text/internal/e;->a(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    invoke-direct {p0, v3, v0, v1, p1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->f(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;JLcom/google/mlkit/vision/common/InputImage;)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->d:Z
    :try_end_1
    .catch Lcom/google/mlkit/common/MlKitException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v2

    .line 4
    :try_start_2
    invoke-virtual {v2}, Lcom/google/mlkit/common/MlKitException;->getErrorCode()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    .line 5
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;->zzk:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;->zzV:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;

    .line 7
    :goto_0
    invoke-direct {p0, v3, v0, v1, p1}, Lcom/google/mlkit/vision/text/internal/TextRecognizerTaskWithResource;->f(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzks;JLcom/google/mlkit/vision/common/InputImage;)V

    .line 8
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
