.class final synthetic Lcom/google/android/gms/measurement/internal/q4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/zzgy;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgy;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q4;->a:Lcom/google/android/gms/measurement/internal/zzgy;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q4;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q4;->a:Lcom/google/android/gms/measurement/internal/zzgy;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q4;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgy;->zzc(Landroid/os/Bundle;)V

    return-void
.end method
