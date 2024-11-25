import { Icons } from "@/components/icons";

export const DATA = {
  name: "Sid Jha",
  initials: "SJ",
  url: "https://heysid.io",
  location: "Edmonton, Canada",
  locationLink: "https://www.google.com/maps/place/sanfrancisco",
  description:
    "Software Engineer and Solopreneur. I love building things and helping people.",
  summary:
    "The turning point in my life came when I built my first consumer-facing app. This experience profoundly changed and humbled my understanding of the possibilities available as a software engineer. It inspired me to pursue a master’s degree in computer science, and I’ve since had the pleasure of contributing to fast-growing startups, both as a leader and an engineer.",
  avatarUrl: "/me.png",
  skills: [
    "React",
    "Next.js",
    "Typescript",
    "Node.js",
    "Python",
    "Go",
    "Postgres",
    "Docker",
    "Kubernetes",
    "Java",
    "C++",
    "Flutter",
    "Dart",
    "Python",
    "Firebase",
  ],
  contact: {
    email: "sidjha0001@gmail.com",
    tel: "+15879379897",
    social: {
      GitHub: {
        url: "https://github.com/itssidhere",
        icon: Icons.github,
      },
      LinkedIn: {
        url: "https://www.linkedin.com/in/itssidhere/",
        icon: Icons.linkedin,
      },
      X: {
        url: "https://x.com/itssidhere",
        icon: Icons.x,
      },
      Youtube: {
        url: "https://www.youtube.com/@itssidhere",
        icon: Icons.youtube,
      },
    },
  },

  work: [
    {
      company: "Data Trei, Stealth Startup",
      href: "https://datatrei.com/",
      badges: [],
      location: "Remote",
      title: "Software Engineer",
      logoUrl: "/datatrei.png",
      start: "Jan 2024",
      end: "Current",
      description:
        "Building the next generation of AI-powered log analysis platform. A copilot for cybersecurity operations.",
    },

    {
      company: "C-Tribe",
      href: "https://www.ctribefestival.com/",
      badges: [],
      location: "Remote",
      title: "Software Engineer, Team Lead",
      logoUrl: "/ctribe.png",
      start: "Jan 2024",
      end: "Current",
      description:
        "At C-Tribe, I lead the development of our event app, focusing on integrating features like search, notifications, schedule views, and user profiles. I manage a team of three interns, ensuring seamless collaboration and efficient project execution, enhancing user experience through innovative solutions.",
    },
    {
      company: "INSA",
      badges: [],
      href: "https://www.insa-lyon.fr/en/",
      location: "Remote",
      title: "Software Engineer",
      logoUrl: "/insa.png",
      start: "Sept 2023",
      end: "Dec 2023",
      description:
        "Architected & developed a virtual brain surgery simulator which uses real-time data from a custom made haptic device to simulate brain surgery. I also developed a custom API for the simulator using Python and C++.",
    },
    {
      company: "McElhanney",
      href: "https://www.mcelhanney.com/",
      badges: [],
      location: "Santa Clara, CA",
      title: "Software Engineer",
      logoUrl: "/mcelhanney.jpeg",
      start: "May 2023",
      end: "Aug 2023",
      description:
        "Architected and wrote the entired MVP for the McElhanney app to display virtual object on top of real world objects using ARKit and ARCore helping the company onsite engineers to visualize the construction site in 3D.",
    },
    {
      company: "University of Alberta",
      href: "https://www.ualberta.ca/index.html",
      badges: [],
      location: "San Jose, CA",
      title: "Software Engineer",
      logoUrl: "/uofa.jpg",
      start: "Oct 2022",
      end: "April 2023",
      description:
        "Developed an app to scrape and analyze data from Twitter for a given search term using Python, Flask, and Firebase. The app included sentiment analysis features and was used to predict vote results. It also helped the university analyze public sentiment on various topics.",
    },
    {
      company: "ImbueDesk",
      href: "https://www.linkedin.com/company/imbuedesk/",
      badges: [],
      location: "San Francisco, CA",
      title: "Senior Software Engineer",
      logoUrl: "/imbuedesk.png",
      start: "Jan 2020",
      end: "March 2022",
      description:
        "Developed an app to track and help reduce carbon emissions for businesses, individuals, and governments. The app used machine learning to predict carbon emissions based on user data and provided recommendations to reduce emissions. The app was used by over 5,000 users and helped reduce carbon emissions by 20%.",
    },
  ],
  education: [
    {
      school: "University of Alberta",
      href: "https://uwaterloo.ca",
      degree: "Master's Degree in Computer Science",
      logoUrl: "/uofa.jpg",
      start: "2022",
      end: "2024",
    },
    {
      school: "Netaji Subhas University of Technology",
      href: "http://aiactr.ac.in/",
      degree: "Bachelor's Degree in Computer Science",
      logoUrl: "/nsut.png",
      start: "2018",
      end: "2021",
    },
    {
      school: "Board of Technical Education",
      href: "https://en.wikipedia.org/wiki/Board_of_Technical_Education,_Delhi",
      degree: "Diploma in Computer Science",
      logoUrl: "/bte.png",
      start: "2015",
      end: "2018",
    },
  ],
  projects: [
    {
      title: "Mohalla",
      href: "https://play.google.com/store/apps/details?id=com.cluxid.mohalla&hl=en_CA",
      dates: "Aug 2019 - Oct 2022",
      active: true,
      description:
        "Mohalla enables users to create chat rooms and watch videos together. I developed the app using Flutter and Firebase, and it has over 300,000 downloads on the Google Play Store.",
      technologies: ["Flutter", "Dart", "Firebase", "Node.js", "Kotlin"],
      links: [
        {
          type: "Playstore",
          href: "https://play.google.com/store/apps/details?id=com.cluxid.mohalla&hl=en_CA",
          icon: <Icons.globe className="size-3" />,
        },
      ],
      image: "",
      video:
        "https://firebasestorage.googleapis.com/v0/b/portfolio-14330.appspot.com/o/Mohalla%20Theatre%20Room%20__%20Mohalla%20-%20Online%20Chat%20Rooms%2C%20Watch%20Together.mp4?alt=media&token=179af473-6cd9-421f-861c-a8e9134d1034",
    },
    {
      title: "DailyReadsAI",
      href: "https://www.dailyreadsai.com/",
      dates: "Jan 2024 - Current",
      active: true,
      description:
        "DailyReadsAI is a web app that uses AI to send you a personalized book excerpts every day.",
      technologies: [
        "Next.js",
        "Typescript",
        "TailwindCSS",
        "Supabase",
        "OpenAI",
        "Stripe",
      ],
      links: [
        {
          type: "Website",
          href: "https://www.dailyreadsai.com/",
          icon: <Icons.globe className="size-3" />,
        },
      ],
      image: "",
      video:
        "https://firebasestorage.googleapis.com/v0/b/portfolio-14330.appspot.com/o/dailyreadsai.mp4?alt=media&token=1ecdf439-a20d-400a-bb95-70f23dd21dab",
    },
    {
      title: "VotewiseIQ",
      href: "https://github.com/itssidhere/votewiseiq",
      dates: "June 2023 - July 2023",
      active: true,
      description:
        "VotewiseIQ is a powerful platform that provides live public sentiment analysis on a variety of topics. It is built using the Flutter for the user interface, Flask for the backend, and Firebase for data storage and real-time updates. With VotewiseIQ, you can gain valuable insights into the opinions and attitudes of the general public in real-time",
      technologies: ["Python", "Flask", "Firebase", "Flutter", "Dart"],
      links: [
        {
          type: "Source",
          href: "https://github.com/itssidhere/votewiseiq",
          icon: <Icons.github className="size-3" />,
        },
      ],
      image: "",
      video:
        "https://github.com/itssidhere/votewiseiq/assets/16454736/b7e12235-b405-4b83-9544-3287db7acd52",
    },
  ],
  hackathons: [
    {
      title: "Afrotech AI Hackathon",
      dates: "November 15th",
      location: "Houston, TX",
      description: "Developed a Copilot for cybersecurity operations.",
      image:
        "https://d2dmyh35ffsxbl.cloudfront.net/assets/reimagine2/devpost-logo-25d0005ec83e3b9ef6fce93235bb6d642d7c828f31758ebdb5b7ee87de7d45c3.svg",
      links: [
        {
          title: "Devpost",
          href: "https://devpost.com/software/project-alabama",
          icon: <Icons.globe className="size-3" />,
        },
      ] as { title: string; href: string; icon: React.ReactNode }[],
    },
  ],
} as const;
