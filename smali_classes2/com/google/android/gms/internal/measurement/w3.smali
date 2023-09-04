.class final Lcom/google/android/gms/internal/measurement/w3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/p5;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/zzhd;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzhd;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    const-string v0, "input"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/zzic;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhd;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    .line 4
    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/zzhd;->zzc:Lcom/google/android/gms/internal/measurement/w3;

    return-void
.end method

.method private final A(Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/n5<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    iget v2, v1, Lcom/google/android/gms/internal/measurement/zzhd;->zza:I

    iget v3, v1, Lcom/google/android/gms/internal/measurement/zzhd;->zzb:I

    if-ge v2, v3, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc(I)I

    move-result v0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n5;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    iget v3, v2, Lcom/google/android/gms/internal/measurement/zzhd;->zza:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/measurement/zzhd;->zza:I

    .line 6
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/n5;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/p5;Lcom/google/android/gms/internal/measurement/zzhm;)V

    .line 7
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/n5;->zzc(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    iget p2, p1, Lcom/google/android/gms/internal/measurement/zzhd;->zza:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/measurement/zzhd;->zza:I

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzd(I)V

    return-object v1

    .line 11
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzih;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzih;-><init>(Ljava/lang/String;)V

    .line 12
    throw p1
.end method

.method private static B(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzg()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object p0

    throw p0
.end method

.method private final C(Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/n5<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->c:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/measurement/w3;->c:I

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/n5;->zza()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/measurement/n5;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/p5;Lcom/google/android/gms/internal/measurement/zzhm;)V

    .line 6
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/n5;->zzc(Ljava/lang/Object;)V

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    iget p2, p0, Lcom/google/android/gms/internal/measurement/w3;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->c:I

    return-object v1

    .line 9
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzg()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->c:I

    .line 11
    throw p1
.end method

.method private final D(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zza()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object p1

    throw p1
.end method

.method public static w(Lcom/google/android/gms/internal/measurement/zzhd;)Lcom/google/android/gms/internal/measurement/w3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhd;->zzc:Lcom/google/android/gms/internal/measurement/w3;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/w3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/w3;-><init>(Lcom/google/android/gms/internal/measurement/zzhd;)V

    return-object v0
.end method

.method private final x(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1
.end method

.method private final y(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzis;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzis;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/w3;->zzn()Lcom/google/android/gms/internal/measurement/zzgr;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzis;->zza(Lcom/google/android/gms/internal/measurement/zzgr;)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 7
    iget p2, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, p2, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/w3;->zzm()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/w3;->zzl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 12
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_2

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 14
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1
.end method

.method private static z(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzg()Lcom/google/android/gms/internal/measurement/zzih;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/k3;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/k3;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzi()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/k3;->a(Z)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzi()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/k3;->a(Z)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/l4;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/w3;->B(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int v3, v1, p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzh()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_6

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 21
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w3;->B(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzh()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/l4;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzq()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzq()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/s4;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/s4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/w3;->z(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w3;->z(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/s4;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/s4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/w3;->z(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzg()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzg()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w3;->z(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzg()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzg()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/n5<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w3;->A(Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/Map;Lcom/google/android/gms/internal/measurement/x4;Lcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/x4<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc(I)I

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final h(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/w3;->y(Ljava/util/List;Z)V

    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/a4;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/a4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/w3;->z(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/a4;->a(D)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/a4;->a(D)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w3;->z(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/w3;->y(Ljava/util/List;Z)V

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/s4;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/s4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzr()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzr()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzr()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final l(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/l4;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final m(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/s4;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/s4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzd()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/n5<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w3;->C(Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzgr;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/w3;->zzn()Lcom/google/android/gms/internal/measurement/zzgr;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1
.end method

.method public final p(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/h4;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/h4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/h4;->a(F)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/w3;->B(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int v3, v1, p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/h4;->a(F)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_6

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 21
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w3;->B(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/l4;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzo()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/w3;->B(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int v3, v1, p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzo()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_6

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 21
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/w3;->B(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final r(Ljava/util/List;Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/n5<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 2
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/w3;->A(Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1
.end method

.method public final s(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/l4;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final t(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/l4;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/l4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzn()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/l4;->c(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzn()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final u(Ljava/util/List;Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/n5<",
            "TT;>;",
            "Lcom/google/android/gms/internal/measurement/zzhm;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 2
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/w3;->C(Lcom/google/android/gms/internal/measurement/n5;Lcom/google/android/gms/internal/measurement/zzhm;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    :cond_2
    :goto_0
    return-void

    .line 6
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1
.end method

.method public final v(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/s4;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/measurement/s4;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zze()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zze()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/s4;->a(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zze()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzu()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/w3;->D(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzih;->zzf()Lcom/google/android/gms/internal/measurement/zzik;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zze()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    return-void
.end method

.method public final zza()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    if-eqz v0, :cond_0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->d:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zza()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    .line 5
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    return v0
.end method

.method public final zzc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzt()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/w3;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/w3;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb()D

    move-result-wide v0

    return-wide v0
.end method

.method public final zze()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzc()F

    move-result v0

    return v0
.end method

.method public final zzf()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzd()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzg()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zze()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzi()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzg()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzh()I

    move-result v0

    return v0
.end method

.method public final zzk()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzi()Z

    move-result v0

    return v0
.end method

.method public final zzl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/measurement/zzgr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzl()Lcom/google/android/gms/internal/measurement/zzgr;

    move-result-object v0

    return-object v0
.end method

.method public final zzo()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzm()I

    move-result v0

    return v0
.end method

.method public final zzp()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzn()I

    move-result v0

    return v0
.end method

.method public final zzq()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzo()I

    move-result v0

    return v0
.end method

.method public final zzr()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzs()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzq()I

    move-result v0

    return v0
.end method

.method public final zzt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/w3;->x(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w3;->a:Lcom/google/android/gms/internal/measurement/zzhd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzr()J

    move-result-wide v0

    return-wide v0
.end method
