.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text_common/zznz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznz;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
