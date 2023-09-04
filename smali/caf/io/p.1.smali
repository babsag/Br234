.class public Lcaf/io/p;
.super Ljava/lang/Object;
.source "DeviceInformation.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:[Ljava/lang/String;

.field m:[Ljava/lang/String;

.field n:Ljava/lang/Long;

.field o:Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;

.field p:Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;

.field q:Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;

.field r:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;


# direct methods
.method public constructor <init>(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->b:Ljava/lang/String;

    .line 4
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->c:Ljava/lang/String;

    .line 5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->d:Ljava/lang/String;

    .line 6
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->e:Ljava/lang/String;

    .line 7
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->f:Ljava/lang/String;

    .line 8
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->g:Ljava/lang/String;

    .line 9
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->h:Ljava/lang/String;

    .line 10
    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->i:Ljava/lang/String;

    .line 11
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcaf/io/p;->j:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/p;->k:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcaf/io/p;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/p;->m:[Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcaf/io/p;->c(Landroid/content/Context;)Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/p;->o:Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;

    .line 15
    invoke-direct {p0, p1}, Lcaf/io/p;->g(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/p;->n:Ljava/lang/Long;

    .line 16
    invoke-direct {p0, p1}, Lcaf/io/p;->f(Landroid/content/Context;)Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/p;->p:Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;

    .line 17
    invoke-direct {p0, p1}, Lcaf/io/p;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/p;->l:[Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcaf/io/p;->a(Landroid/content/Context;)Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;

    move-result-object v0

    iput-object v0, p0, Lcaf/io/p;->q:Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;

    const/4 v0, 0x3

    .line 19
    invoke-static {p1, v0}, Lcaf/io/F;->a(Lcom/combateafraude/passivefaceliveness/PassiveFaceLivenessActivity;I)Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    move-result-object p1

    iput-object p1, p0, Lcaf/io/p;->r:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "status"

    const/4 v1, -0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    new-instance v2, Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;

    const-string v3, "scale"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {v2, v0, p1}, Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;-><init>(ZI)V

    return-object v2
.end method

.method private static c(Landroid/content/Context;)Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;
    .locals 13

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    :goto_1
    new-instance v4, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;

    const-string v5, "android.permission.READ_CONTACTS"

    .line 4
    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 6
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "_id"

    .line 9
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "display_name"

    .line 10
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v7, "has_phone_number"

    .line 11
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_3

    .line 12
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-array v10, v2, [Ljava/lang/String;

    aput-object v6, v10, v3

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v9, "contact_id = ?"

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 13
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-eqz v6, :cond_4

    .line 14
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "data1"

    .line 15
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_4
    new-instance v8, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;

    new-array v9, v3, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v8, v12, v7}, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_3

    .line 17
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    new-array p0, v3, [Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;

    .line 19
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, [Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;

    .line 20
    :goto_4
    invoke-direct {v4, v0, v1}, Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;-><init>(Ljava/lang/Boolean;[Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/Contact;)V

    return-object v4
.end method

.method public static d(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 4
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private e(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 2
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p1

    .line 3
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 5
    aget-object v3, p1, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    aget-object v3, p1, v2

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private f(Landroid/content/Context;)Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;
    .locals 8

    .line 1
    new-instance v6, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;

    const-string v0, "android.permission.CAMERA"

    .line 2
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 4
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const-string v0, "android.permission.READ_CONTACTS"

    .line 5
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 6
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    move-object v0, v6

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v7

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;-><init>(ZZZZZ)V

    return-object v6
.end method

.method private g(Landroid/content/Context;)J
    .locals 5

    .line 1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 4
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcaf/io/p;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->q:Lcom/combateafraude/passivefaceliveness/controller/attestation/battery/BatteryInfo;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcaf/io/p;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcaf/io/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;
    .locals 1

    .line 7
    iget-object v0, p0, Lcaf/io/p;->o:Lcom/combateafraude/passivefaceliveness/controller/attestation/contacts/ContactsInfo;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcaf/io/p;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()[Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcaf/io/p;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->m:[Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->d:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->n:Ljava/lang/Long;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->r:Lcom/combateafraude/passivefaceliveness/controller/server/model/parameter/analytics/event/NetworkInfoEvent;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->j:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->p:Lcom/combateafraude/passivefaceliveness/controller/attestation/permission/PermissionInfo;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcaf/io/p;->h:Ljava/lang/String;

    return-object v0
.end method
