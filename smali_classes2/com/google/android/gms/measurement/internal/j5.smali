.class final Lcom/google/android/gms/measurement/internal/j5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzad;

.field private final synthetic b:J

.field private final synthetic c:I

.field private final synthetic d:J

.field private final synthetic e:Z

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/zzgy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgy;Lcom/google/android/gms/measurement/internal/zzad;JIJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Lcom/google/android/gms/measurement/internal/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/j5;->b:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/j5;->c:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/j5;->d:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/j5;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Lcom/google/android/gms/measurement/internal/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/zzad;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Lcom/google/android/gms/measurement/internal/zzad;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Lcom/google/android/gms/measurement/internal/zzgy;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/j5;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(JZ)V

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/j5;->f:Lcom/google/android/gms/measurement/internal/zzgy;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/j5;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/j5;->c:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/j5;->d:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/j5;->e:Z

    const/4 v9, 0x1

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzgy;->zza(Lcom/google/android/gms/measurement/internal/zzgy;Lcom/google/android/gms/measurement/internal/zzad;IJZZ)V

    return-void
.end method
