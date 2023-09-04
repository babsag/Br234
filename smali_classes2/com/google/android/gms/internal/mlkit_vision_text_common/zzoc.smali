.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition-common@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

.field public final synthetic zzc:Ljava/lang/Object;

.field public final synthetic zzd:J

.field public final synthetic zze:Lcom/google/mlkit/vision/text/internal/zzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;Ljava/lang/Object;JLcom/google/mlkit/vision/text/internal/zzo;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zzc:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zzd:J

    iput-object p6, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zze:Lcom/google/mlkit/vision/text/internal/zzo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zza:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zzc:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zzd:J

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzoc;->zze:Lcom/google/mlkit/vision/text/internal/zzo;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzog;->zzh(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzkt;Ljava/lang/Object;JLcom/google/mlkit/vision/text/internal/zzo;)V

    return-void
.end method
