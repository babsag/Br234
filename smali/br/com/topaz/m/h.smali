.class public Lbr/com/topaz/m/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lbr/com/topaz/heartbeat/utils/OFDException;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbr/com/topaz/heartbeat/utils/OFDException;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lbr/com/topaz/m/h;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lbr/com/topaz/m/h;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lbr/com/topaz/m/h;->c:I

    iput-object p1, p0, Lbr/com/topaz/m/h;->d:Landroid/content/Context;

    iput-object p2, p0, Lbr/com/topaz/m/h;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)Lbr/com/topaz/l/d0;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->listHarmfulApps()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;->getHarmfulAppsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/safetynet/HarmfulAppsData;

    new-instance v2, Lbr/com/topaz/l/s;

    iget-object v3, v1, Lcom/google/android/gms/safetynet/HarmfulAppsData;->apkPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/safetynet/HarmfulAppsData;->apkSha256:[B

    invoke-static {v4}, Lbr/com/topaz/m/h;->a([B)Ljava/lang/String;

    move-result-object v4

    iget v1, v1, Lcom/google/android/gms/safetynet/HarmfulAppsData;->apkCategory:I

    invoke-direct {v2, v3, v4, v1}, Lbr/com/topaz/l/s;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lbr/com/topaz/l/d0;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Lbr/com/topaz/l/d0;-><init>(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/m/h;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "158"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    new-instance p1, Lbr/com/topaz/l/d0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, Lbr/com/topaz/l/d0;-><init>(ILjava/util/List;)V

    return-object p1
.end method

.method public b(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lbr/com/topaz/m/h;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->isVerifyAppsEnabled()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;

    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;->isVerifyAppsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lbr/com/topaz/m/h;->b:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lbr/com/topaz/m/h;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lbr/com/topaz/m/h;->e:Lbr/com/topaz/heartbeat/utils/OFDException;

    const-string v1, "159"

    invoke-virtual {v0, p1, v1}, Lbr/com/topaz/heartbeat/utils/OFDException;->b(Ljava/lang/Exception;Ljava/lang/String;)V

    iget p1, p0, Lbr/com/topaz/m/h;->a:I

    return p1
.end method
