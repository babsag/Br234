.class final Lcom/google/android/gms/measurement/internal/m5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzad;

.field private final synthetic b:I

.field private final synthetic c:J

.field private final synthetic d:Z

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgy;Lcom/google/android/gms/measurement/internal/zzad;IJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m5;->e:Lcom/google/android/gms/measurement/internal/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/m5;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/m5;->c:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/m5;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m5;->e:Lcom/google/android/gms/measurement/internal/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/m5;->e:Lcom/google/android/gms/measurement/internal/zzgy;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/m5;->b:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/m5;->c:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/m5;->d:Z

    const/4 v7, 0x0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Lcom/google/android/gms/measurement/internal/zzgy;Lcom/google/android/gms/measurement/internal/zzad;IJZZ)V

    return-void
.end method
