.class public Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.5.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/CloseGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final a:Lcom/google/mlkit/common/sdkinternal/Cleaner;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/Cleaner;)V
    .locals 0
    .param p1    # Lcom/google/mlkit/common/sdkinternal/Cleaner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;->a:Lcom/google/mlkit/common/sdkinternal/Cleaner;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;ILjava/lang/Runnable;)Lcom/google/mlkit/common/sdkinternal/CloseGuard;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const-string v0, "common"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/zznb;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzmq;

    move-result-object v6

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;->a:Lcom/google/mlkit/common/sdkinternal/Cleaner;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/mlkit/common/sdkinternal/CloseGuard;-><init>(Ljava/lang/Object;ILcom/google/mlkit/common/sdkinternal/Cleaner;Ljava/lang/Runnable;Lcom/google/android/gms/internal/mlkit_common/zzmq;)V

    return-object v0
.end method
