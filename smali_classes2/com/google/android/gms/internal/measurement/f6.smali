.class final Lcom/google/android/gms/internal/measurement/f6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/e6;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/zzgr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/f6;->a:Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f6;->a:Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzgr;->zza(I)B

    move-result p1

    return p1
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/f6;->a:Lcom/google/android/gms/internal/measurement/zzgr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgr;->zza()I

    move-result v0

    return v0
.end method
