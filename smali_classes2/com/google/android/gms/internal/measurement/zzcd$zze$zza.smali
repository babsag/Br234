.class public final Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
.super Lcom/google/android/gms/internal/measurement/zzhz$zza;
.source "com.google.android.gms:play-services-measurement@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzcd$zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzhz$zza<",
        "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
        "Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjj;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzn()Lcom/google/android/gms/internal/measurement/zzcd$zze;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;-><init>(Lcom/google/android/gms/internal/measurement/zzhz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/t0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V

    return-object p0
.end method

.method public final zza(D)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;D)V

    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;J)V

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzz()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;Lcom/google/android/gms/internal/measurement/zzcd$zze;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;"
        }
    .end annotation

    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zza(Lcom/google/android/gms/internal/measurement/zzcd$zze;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzb(Lcom/google/android/gms/internal/measurement/zzcd$zze;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzc(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V

    return-object p0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzl()I

    move-result v0

    return v0
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/zzcd$zze$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzu()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz$zza;->zza:Lcom/google/android/gms/internal/measurement/zzhz;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcd$zze;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzcd$zze;->zzd(Lcom/google/android/gms/internal/measurement/zzcd$zze;)V

    return-object p0
.end method
