.class final synthetic Lcom/google/firebase/crashlytics/internal/persistence/f;
.super Ljava/lang/Object;
.source "CrashlyticsReportPersistence.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field private static final a:Lcom/google/firebase/crashlytics/internal/persistence/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/persistence/f;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/persistence/f;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/f;->a:Lcom/google/firebase/crashlytics/internal/persistence/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/io/FilenameFilter;
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/f;->a:Lcom/google/firebase/crashlytics/internal/persistence/f;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->s(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
