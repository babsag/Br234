.class final Lcom/google/android/gms/measurement/internal/c7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzju;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzju;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/zzju;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/c7;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/zzju;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzju;->zzb(Lcom/google/android/gms/measurement/internal/zzju;J)V

    return-void
.end method
