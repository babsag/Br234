.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;

.field public final synthetic zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;Lcom/google/android/gms/internal/mlkit_vision_common/zzht;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;->zza:Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;->zzb:Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzht;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzkx;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_common/zzkz;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzkr;Lcom/google/android/gms/internal/mlkit_vision_common/zzht;Ljava/lang/String;)V

    return-void
.end method
